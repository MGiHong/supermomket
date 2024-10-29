package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mom.service.CartService;
import com.spring.mom.vo.CartVO;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;

	@RequestMapping("/cartList.do")
	public String getcartList(CartVO cvo, Model model) {
		model.addAttribute("cartList", cartService.getcartList(cvo));
		model.addAttribute("carttotal", cartService.carttotal(cvo));
		System.out.println("carttotal: "+cartService.carttotal(cvo));
		
		return "cart/cartmain";
	}

	public String getcart(CartVO cvo) {
		return "";
	}

	public String insertcart(CartVO cvo) {
		return "";
	}

	public String updatecart(CartVO cvo) {
		return "";
	}

	public String deletcart(CartVO cvo) {
		return "";
	}

}
