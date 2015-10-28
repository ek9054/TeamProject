package com.recommend.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class RecommendModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("jsp","../recommend/recommend.jsp");
		req.setAttribute("active5","active");
		return "web/main/index.jsp";
	}

}
