package com.spring.mom.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mom.vo.CartVO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate cartmybatis;
	
	public List<CartVO> getcartList(CartVO cvo) {
		return cartmybatis.selectList("CartDAO.getcartList",cvo);
		}
	public CartVO getcart(CartVO cvo) {
		return cartmybatis.selectOne("CartDAO.getcart",cvo);}
	
	public void insertcart(CartVO cvo) {
		cartmybatis.insert("CartDAO.insertcart",cvo);
	}
			
	
	public void updatecart(CartVO cvo) {
		cartmybatis.update("CartDAO.updatecart",cvo);
	}
	
	public void deletcart(CartVO cvo) {
		cartmybatis.delete("CartDAO.deletcart",cvo);
	}
	public CartVO carttotal(CartVO cvo) {
		return (CartVO) cartmybatis.selectOne("CartDAO.carttotal",cvo);
	}
	
}
