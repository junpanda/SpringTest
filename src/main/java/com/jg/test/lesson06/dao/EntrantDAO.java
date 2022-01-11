package com.jg.test.lesson06.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

@Repository
public interface EntrantDAO {

		public int insertEntrant(
				@Param("name") String name,
				@Param("license") String license,
				@Param("score") int score
				);
}
