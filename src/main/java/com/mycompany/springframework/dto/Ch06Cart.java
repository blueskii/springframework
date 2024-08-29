package com.mycompany.springframework.dto;

import java.util.ArrayList;
import java.util.List;

public class Ch06Cart {
	private List<Ch06Item> contents = new ArrayList<>();

	public List<Ch06Item> getContents() {
		return contents;
	}
	
	public void addItem(Ch06Item item) {
		contents.add(item);
	}
	
	public void removeItem(Ch06Item item) {
		contents.remove(item);
	}
}
