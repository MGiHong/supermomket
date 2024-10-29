package com.spring.mom.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mom.dao.CartDAO;
import com.spring.mom.service.CartService;
import com.spring.mom.vo.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;

	@Override
	public List<CartVO> getcartList(CartVO cvo) {
		return cartDAO.getcartList(cvo);
	}

	@Override
	public CartVO carttotal(CartVO cvo) {
		System.out.println("서비스 임플 carttotal");
		return cartDAO.carttotal(cvo);
	}

	@Override
	public CartVO getcart(CartVO cvo) {
		return cartDAO.getcart(cvo);
	}

	@Override
	public void insertcart(CartVO cvo) {
		cartDAO.insertcart(cvo);
	}

	@Override
	public void updatecart(CartVO cvo) {
		cartDAO.updatecart(cvo);
	}

	@Override
	public void deletcart(CartVO cvo) {
		cartDAO.deletcart(cvo);
	}

}
