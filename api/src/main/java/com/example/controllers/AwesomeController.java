package com.example.controllers;

import com.example.services.SharedService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AwesomeController {

  private final SharedService service;

  public AwesomeController(SharedService service) {
    this.service = service;
  }

  @GetMapping("/")
  public String index() {
    return service.getServiceName();
  }
}
