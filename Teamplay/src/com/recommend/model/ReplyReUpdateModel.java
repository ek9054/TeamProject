package com.recommend.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.recommend.dao.ReplyBoardDAO;
import com.recommend.dao.ReplyDTO;
import com.common.Model;

public class ReplyReUpdateModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String msg=req.getParameter("rmsg");
		String bno=req.getParameter("bno");
		String page=req.getParameter("page");
		String no=req.getParameter("no");
		// DB연동
		ReplyDTO d=new ReplyDTO();
		d.setNo(Integer.parseInt(no));
		d.setMsg(msg);
		//DB연동
		ReplyBoardDAO.replyReUpdate(d);
		req.setAttribute("no", bno);
		req.setAttribute("page", page);
		return "board/reply_ok.jsp";
	}

}



