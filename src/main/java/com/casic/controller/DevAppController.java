package com.casic.controller;

import com.casic.model.Appinfo;
import com.casic.service.AppInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/app")
public class DevAppController {
    @Autowired
    AppInfoService appInfoService;
    @RequestMapping("/index/{id}")
    public String toIndex(@PathVariable Long id , Model model){
        System.out.println("id="+id);
        PageInfo<Appinfo> pageInfo = new PageInfo<Appinfo>();
        pageInfo.setPageSize(5);
        pageInfo.setPageNum(1);
        PageInfo<Appinfo> result=appInfoService.queryByDevUserId(id,pageInfo);
        System.out.println(result);
        model.addAttribute("page",result);
        return "app/index";
    }
}
