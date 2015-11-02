package com.recommend.model;
import javax.servlet.http.HttpServletRequest;
import java.util.*;
import com.recommend.dao.*;
import javax.servlet.http.HttpServletResponse;
import java.text.*;
import com.common.*;
public class BoardListModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		  String strPage=req.getParameter("page");
		   if(strPage==null)
		   {
		      strPage ="1";
		   }
		   int curpage = Integer.parseInt(strPage);
		   int rowSize=10;
		   int totalpage = ReplyBoardDAO.boardTotalPage();
		   int start=(curpage*rowSize)-(rowSize-1);
		   int end=(curpage*rowSize);
		   Map map = new HashMap();
		   map.put("start", start); // #{start} get("start")
		   map.put("end", end);
		   List<ReplyBoardDTO> list=ReplyBoardDAO.boardListData(map);
		   for(ReplyBoardDTO d:list)
		   {
			   d.setReplyCount(ReplyBoardDAO.boardReplyCount(d.getBno()));
		   }
		   req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		   req.setAttribute("list", list);
		   req.setAttribute("curpage", curpage);
		   req.setAttribute("totalpage", totalpage);
		   req.setAttribute("title", "자유 게시판");
		req.setAttribute("jsp", "../board/board_list.jsp");
		return "main/main.jsp";
	}

}
