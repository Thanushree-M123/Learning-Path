package com.example.loanservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoanServiceController {
    @GetMapping("/")
    public String home() {
        return "✅ Loan Service is running!";
    }

    @GetMapping("/loans")
    public String getLoans() {
        return "Here are your loans.";
    }
}

