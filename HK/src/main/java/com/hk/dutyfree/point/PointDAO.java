package com.hk.dutyfree.point;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PointDAO {

	@Autowired
	private SqlSession ss;
	
	public void Pointinput(Point p, HttpServletRequest req, HttpServletResponse res){
		if(ss.getMapper(PointMapper.class).inputPoint(p) == 1){
			req.setAttribute("r", "성공");
		} else{
			req.setAttribute("r", "실패");
		}
		
		
	}
	
}
