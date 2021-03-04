package com.systemic.exception;

import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@ControllerAdvice
@Log4j
public class CustomExceptionAdvice {

    @ExceptionHandler(Exception.class)
    public String except(Exception ex, Model model) {
        log.error("Exception ......." + ex.getMessage());
        model.addAttribute("exception", ex);
        log.error(model);
        return "/exception/error";
    }

    @ExceptionHandler(NoHandlerFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handle404(NoHandlerFoundException ex) {
        return "/exception/page_404";
    }

    @ExceptionHandler(AccessDeniedException.class)
    protected String handleAccessDeniedException(AccessDeniedException ex, Model model) {
        log.error("handleAccessDeniedException", ex);
        model.addAttribute("exception", ex);
        return "/exception/error_access";
    }
}
