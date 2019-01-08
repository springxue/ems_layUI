package com.casic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class TestController {
    @RequestMapping("/test")
    public void getParam(@RequestParam("username") String username,@RequestParam("password") String password){
        System.out.println(username+"   "+password);
    }
}
