package com.casic.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.json.JsonObject;


@Controller
public class JsonController {
    @RequestMapping("/tet")
    @ResponseBody
    public String select( String username){
        System.out.println(username);

            return "操作成功";
        }
    }


