package com.mycompany.springframework.exception;

public class Ch10CustomException extends Exception {
	public Ch10CustomException() {
	}
	
	public Ch10CustomException(String message) {
		super(message);
	}
}
