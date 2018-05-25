package com.dhht.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

//测试页面跳转
@Controller
public class ThymeleafController {
    @RequestMapping(value="/index")
    public String  index(ModelMap map) {
        map.addAttribute("host", "我是xzp");
        return "index";
    }
    //处理异常
    @RequestMapping("/exception")
    public String handler() throws  Exception{
        throw new Exception("这是一个异常");
    }

    //自定义异常
    @RequestMapping("/myexception")
    public String myhandler() throws  myException{
        throw new myException("这是一个异常");
    }

}
