package com.aws.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/patient")
public class PatientController {
	@GetMapping("/name")
	public ResponseEntity<String> getName() {
		return ResponseEntity.ok("Challa Venkata Reddy");
	}
}
