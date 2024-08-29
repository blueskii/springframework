package com.mycompany.springframework.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch06Cart;
import com.mycompany.springframework.dto.Ch06Item;
import com.mycompany.springframework.dto.Ch06Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch06")
public class Ch06Controller {
	@GetMapping("/forward")
	public String forward(Model model, HttpServletRequest request) {
		Ch06Member member = new Ch06Member();
		member.setMid("user1");
		member.setMname("사용자1");
		member.setMemail("user1@mycompany.com");
		
		//방법1
		model.addAttribute("member1", member);
		
		//방법2
		request.setAttribute("member2", member);
		
		return "ch06/forward";
	}
	
	@GetMapping("/redirect")
	public String redirect(HttpSession session) {
		Ch06Member member = new Ch06Member();
		member.setMid("user1");
		member.setMname("사용자1");
		member.setMemail("user1@mycompany.com");
		
		//세션에 저장
		session.setAttribute("member", member);
		
		return "redirect:/ch06/sessionData";
	}
	
	@GetMapping("/sessionData")
	public String sessionData(HttpSession session) {
		//세션에서 찾아오기(읽기)
		Ch06Member member = (Ch06Member) session.getAttribute("member");
		
		log.info("mid: " + member.getMid());
		log.info("mname: " + member.getMname());
		log.info("memail: " + member.getMemail());
		
		return "ch06/sessionData";
	}
	
	@GetMapping("/cartview")
	public String cartview(HttpSession session) {	
		return "ch06/cartview";
	}
	
	@GetMapping("/productlist")
	public String productlist(Model model) {
		List<Ch06Item> productList = new ArrayList<>();
		for(int i=1; i<=5; i++) {
			Ch06Item item = new Ch06Item();
			item.setPno("p" + i);
			item.setPname("상품" + i);
			productList.add(item);
		}
		
		model.addAttribute("productList", productList);
		return "ch06/productlist";
	}
	
	@GetMapping("/cartadd")
	public String cartadd(Ch06Item item, HttpSession session) {
		//세션에서 Ch06Cart 가져오기
		Ch06Cart cart = (Ch06Cart) session.getAttribute("cart");
		//만약 Ch06Cart 객체가 없다면 새로 생성해서 세션에 저장
		if(cart == null) {
			cart = new Ch06Cart();
			session.setAttribute("cart", cart);
		}
		//상품 아이템을 Ch06Cart에 추가
		cart.addItem(item);
		return "redirect:/ch06/cartview";
	}
	
	@GetMapping("/deleteitem")
	public String deleteitem(String pno, HttpSession session) {
		//세션에서 Ch06Cart 가져오기
		Ch06Cart cart = (Ch06Cart) session.getAttribute("cart");
		//삭제할 pid를 찾아서 장바구니에서 제거
		Iterator<Ch06Item> iterator = cart.getContents().iterator();
		while(iterator.hasNext()) {
			Ch06Item item = iterator.next();
			if(item.getPno().equals(pno)) {
				iterator.remove();
			}
		}
		return "redirect:/ch06/cartview";
	}
}

















