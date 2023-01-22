package mititelu.laura.conference.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class GreetingController {

    @GetMapping("greeting")
    public  String greeting(Map<String, Object> model){ //this method name can be anything
        model.put("message", "Hello Laura");
        return "greeting";
    }

    @GetMapping("thyme")
    public  String thymeMessage(Map<String, Object> model){ //this method name can be anything
        model.put("message", "Hello Laura. You're using Thymeleaf");
        return "thyme";
    }

}
