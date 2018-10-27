package com.hhrd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"login"})
public class LoginController
{
    @RequestMapping({"/toIndex"})
    public String toIndex(Model model)
    {
        return "index";
    }
}
