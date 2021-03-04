package com.systemic.controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.LocaleResolver;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@AllArgsConstructor
@Log4j
@Controller
public class MainController {

    MessageSource messageSource;
    LocaleResolver localeResolver;

    @GetMapping("/")
    public String home(Locale locale, HttpServletRequest request, Model model){
        // RequestMapingHandler로 부터 받은 Locale 객체를 출력해 봅니다.
        model.addAttribute("clientLocale", locale);

        // localeResolver 로부터 Locale 을 출력해 봅니다.
        model.addAttribute("sessionLocale", localeResolver.resolveLocale(request));

        // JSP 페이지에서 EL 을 사용해서 arguments 를 넣을 수 있도록 값을 보낸다.
        model.addAttribute("siteCount", messageSource.getMessage("msg.first", null, locale));

        return "main";
    }

    @GetMapping("main")
    public void main(){
    }

    @GetMapping("/puble/{viewname}")
    public String publishing(String viewname){
        return viewname;
    }


}
