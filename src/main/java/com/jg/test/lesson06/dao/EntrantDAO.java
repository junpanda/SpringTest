package com.jg.test.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jg.test.lesson06.model.Entrant;

@Repository
public interface EntrantDAO {

		public int insertEntrant(
				@Param("name") String name,
				@Param("license") String license,
				@Param("score") int score
				);
		
		public List<Entrant> selectEntrant();
		
		public int selectCountName(@Param("name") String name);
		
		public int deleteEntrant(@Param("id") int id);
}
