package com.dhht.controller;


import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value="/admin")     // 通过这里配置使下面的映射都在/users下，可去除
public class AdminController {

    @RequestMapping(value="/getmakedepartment")
    public String  index(ModelMap map) {
        map.addAttribute("host", "http://blog.didispace.com");
        return "index11rra11aaa";
    }


}