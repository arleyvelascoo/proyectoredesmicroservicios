package com.example.demo.rest;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController 
public class paula {
	
	@GetMapping ("/nombre")
	public 	String nombreSitio() {
		return "pureba";
	}
	
	
	
	@GetMapping ("/des")
	public 	String descriSitio() {
		return "pureba2";
	}


}
