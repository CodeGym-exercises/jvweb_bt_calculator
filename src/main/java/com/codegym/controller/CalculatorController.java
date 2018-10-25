package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class CalculatorController {
    @GetMapping
    public String showHomePage(){
        return "index";
    }

    @PostMapping
    public String calculate(@RequestParam("operator") String operator, @RequestParam("firstnum") String firstNum,
                            @RequestParam("secondnum") String secondNum, Model model){
        double num1 = Double.parseDouble(firstNum);
        double num2 = Double.parseDouble(secondNum);
        double result = 0;
        boolean isValidResult = true;
        switch (operator){
            case "+":
                result = num1+ num2;
                break;
            case "-":
                result = num1-num2;
                break;
            case "*":
                result = num1*num2;
                break;
            case "/":
                if(num2!=0){
                    result = num1/num2;
                }else{
                    isValidResult = false;
                }
                break;
        }
        model.addAttribute("result",isValidResult?"Error":result+"");
        return "index";
    }


}
