package com.menu.dao;
import java.sql.*;
import java.util.*;
public class MenuDAO {
	// 연결 객체 생성
	private Connection conn;
	// SQL문장을 전송 객체
	private PreparedStatement ps;
	// 오라클 ==> 주소
	private final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
	// 드라이버 설치 Class.forName() : thin드라이버
	public MenuDAO()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 리플렉션 : 클래스의 정보를 얻어서 멤버변수, 메소드, 생성자를 제어
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	// 오라클 연결
	public void getConnection()
	{
		try {
			conn=DriverManager.getConnection(URL,"scott","tiger");
			// conn scott/tiger  (오라클에서 연결)
		} catch (Exception ex) {}
	}
	// 오라클 해제	
	public void disConnection()
	{
		try
		{
			if (ps!=null) ps.close();
			if (conn!=null) conn.close();
		} catch(Exception ex){}
	}
	// =================== 기본 세팅
	// 기능 (SQL => 전송, 결과)
	// 로그인
	
	public ArrayList<MenuDTO> menuFindData(int tno)
	{
		ArrayList<MenuDTO> list = new ArrayList<MenuDTO>();
		try {
			getConnection();
			String sql="SELECT hno,hname,price FROM menu WHERE tno=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, tno);
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				MenuDTO d= new MenuDTO();
				d.setHno(rs.getInt(1));
				d.setHname(rs.getString(2));
				d.setPrice(rs.getInt(3));
				list.add(d);
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		finally{
			disConnection();
		}
		return list;
	}
}