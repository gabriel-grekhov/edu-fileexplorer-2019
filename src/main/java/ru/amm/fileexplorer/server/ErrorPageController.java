package ru.amm.fileexplorer.server;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/error")
public class ErrorPageController implements org.springframework.boot.web.servlet.error.ErrorController {
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView processError(HttpServletRequest req) {
        int status = getErrorCode(req);
        String message = "Unknown error";
        if (status == 404) {
            message = "The requested page not found";
        }
        return new ModelAndView("error-page", "errorMessage", message);
    }

    private int getErrorCode(HttpServletRequest httpRequest) {
        return (Integer) httpRequest.getAttribute("javax.servlet.error.status_code");
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}
