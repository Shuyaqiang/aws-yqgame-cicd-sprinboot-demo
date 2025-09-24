package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        return "EveryOne Bady!<br>Hello Brave Spring Boot World! This is new codepipeline world !Test git push pipeline";
    }
}

