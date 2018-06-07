package com.zua.ifashion.util;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.context.request.WebRequest;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateEnride {

    public void initBinder(WebDataBinder binder, WebRequest request) {

//        　　6、date类型转换为json字符串时，返回的是long time值，如果需要返回指定的日期的类型的get方法上写上@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8") ，即可将json返回的对象为指定的类型。
//
//        @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
//        @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
//        public Date getCreateTime() {
//            return this.createTime;
//        }
        //日期转换器
        //DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }
}
