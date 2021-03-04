package com.systemic.controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("admin")
public class AdminController {

    @GetMapping("/")
    public void admin() {
    }

    @GetMapping("login")
    public void loginForm(HttpServletRequest req) {
        String referer = req.getHeader("Referer");
        req.getSession().setAttribute("prevPage", referer);
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("main")
    public void main(){

    }

    @GetMapping("main2")
    public void main2(){
    }

}
