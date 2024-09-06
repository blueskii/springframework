package com.mycompany.springframework.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Ch13UpdateBoardForm {
	private int bno;
	private String btitle;
	private String bcontent;
	private MultipartFile battach;
}
