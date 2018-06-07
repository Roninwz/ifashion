package com.zua.ifashion.util.ueditor.upload;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public class Uploader {
	private HttpServletRequest request = null;
	private Map<String, Object> conf = null;

	public Uploader(HttpServletRequest request, Map<String, Object> conf) {
		this.request = request;
		this.conf = conf;
	}

	public final com.zua.ifashion.util.ueditor.define.State doExec() {
		String filedName = (String) this.conf.get("fieldName");
		com.zua.ifashion.util.ueditor.define.State state = null;

		if ("true".equals(this.conf.get("isBase64"))) {
			state = com.zua.ifashion.util.ueditor.upload.Base64Uploader.save(this.request.getParameter(filedName),
					this.conf);
		} else {
			state = com.zua.ifashion.util.ueditor.upload.BinaryUploader.save(this.request, this.conf);
		}

		return state;
	}
}
