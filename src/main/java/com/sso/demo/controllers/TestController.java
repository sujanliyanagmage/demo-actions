package com.sso.demo.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class TestController {

    @GetMapping(value = "hello", produces = "application/json")
    public String HelloWorld() {
        return "Hello CI/CD learners";
    }
}
