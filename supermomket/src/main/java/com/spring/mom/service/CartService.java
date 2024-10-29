package com.spring.mom.service;

import java.util.List;

import com.spring.mom.vo.CartVO;

public interface CartService {

	List<CartVO> getcartList(CartVO cvo);

	CartVO getcart(CartVO cvo);

	void insertcart(CartVO cvo);

	void updatecart(CartVO cvo);

	void deletcart(CartVO cvo);

	CartVO carttotal(CartVO cvo);
}	
