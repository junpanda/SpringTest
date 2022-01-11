package com.jg.test.lesson02.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jg.test.lesson02.model.Real_estate;

@Repository
public interface Real_estateDAO {
	
	public Real_estate selectReal_estate1(
			@Param("id") int id);
	
	public List<Real_estate> selectReal_estate2(
			@Param("rent") int rent);
	
	public List<Real_estate> selectReal_estate3(
			@Param("area") int area
			,@Param("price") int price);
	
	public int insertReal_estate(
			@Param("realtorId")int realtorId
			,@Param("address")String address
			,@Param("area")int area
			,@Param("type")String type
			,@Param("price")int price
			);
	public int insertReal_estate2(
			@Param("realtorId")int realtorId
			,@Param("address")String address
			,@Param("area")int area
			,@Param("type")String type
			,@Param("price")int price
			,@Param("rentPrice")int rentPrice
			);
	public int updateReal_estate(
			@Param("id")int id
			,@Param("type")String type
			,@Param("price")int price
			);
	public int deleteReal_estate(
			@Param("id")int id
			);
	
}
