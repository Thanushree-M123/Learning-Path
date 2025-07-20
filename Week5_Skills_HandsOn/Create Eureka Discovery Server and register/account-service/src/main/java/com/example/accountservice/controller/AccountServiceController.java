package com.example.accountservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AccountServiceController {
    @GetMapping("/")
    public String home() {
        return "✅ Account Service is running!";
    }

    @GetMapping("/accounts")
    public String getAccounts() {
        return "Here are your accounts.";
    }
}

