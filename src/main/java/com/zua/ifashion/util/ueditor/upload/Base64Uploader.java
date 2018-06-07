package com.zua.ifashion.util.ueditor.upload;

import java.util.Map;

import org.apache.commons.codec.binary.Base64;

public final class Base64Uploader {

	public static com.zua.ifashion.util.ueditor.define.State save(String content, Map<String, Object> conf) {
		
		byte[] data = decode(content);

		long maxSize = ((Long) conf.get("maxSize")).longValue();

		if (!validSize(data, maxSize)) {
			return new com.zua.ifashion.util.ueditor.define.BaseState(false, com.zua.ifashion.util.ueditor.define.AppInfo.MAX_SIZE);
		}

		String suffix = com.zua.ifashion.util.ueditor.define.FileType.getSuffix("JPG");

		String savePath = com.zua.ifashion.util.ueditor.PathFormat.parse((String) conf.get("savePath"),
				(String) conf.get("filename"));
		
		savePath = savePath + suffix;
		String physicalPath = (String) conf.get("rootPath") + savePath;

		com.zua.ifashion.util.ueditor.define.State storageState = com.zua.ifashion.util.ueditor.upload.StorageManager.saveBinaryFile(data, physicalPath);

		if (storageState.isSuccess()) {
			storageState.putInfo("url", com.zua.ifashion.util.ueditor.PathFormat.format(savePath));
			storageState.putInfo("type", suffix);
			storageState.putInfo("original", "");
		}

		return storageState;
	}

	private static byte[] decode(String content) {
		return Base64.decodeBase64(content);
	}

	private static boolean validSize(byte[] data, long length) {
		return data.length <= length;
	}
	
}