package com.flowrecord.app.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "Hello World";
    }

    @GetMapping("/jdk-version")
    public String getJdkVersion() {
        return "Current JDK Version: " + System.getProperty("java.version");
    }
}
