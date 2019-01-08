package com.casic.controller;


import com.casic.mapper.DevUserMapper;
import com.casic.model.DevUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/dev")
public class DevUserController {
    @Autowired
    DevUserMapper devUserMapper;
    @RequestMapping("/login")
    public String toLogin(DevUser devUser, Model model, HttpSession httpSession){

        DevUser currentUser=devUserMapper.findDevUser(devUser);
        if(currentUser!=null){
            httpSession.setAttribute("currentUser",currentUser);
            return "dev/index";
        }
        model.addAttribute("error","登录失败");
        return "dev/login";
    }
    @RequestMapping("/logout/{id}")
    public String logout(@PathVariable Long id, HttpSession httpSession){
        httpSession.removeAttribute("currentUser");
        httpSession.invalidate();
        return "redirect:/";
    }
}
