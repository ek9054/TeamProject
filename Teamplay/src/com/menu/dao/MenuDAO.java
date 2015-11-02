package com.menu.dao;
import java.sql.*;
import java.util.*;
public class MenuDAO {
	// ���� ��ü ����
	private Connection conn;
	// SQL������ ���� ��ü
	private PreparedStatement ps;
	// ����Ŭ ==> �ּ�
	private final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
	// ����̹� ��ġ Class.forName() : thin����̹�
	public MenuDAO()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// ���÷��� : Ŭ������ ������ �� �������, �޼ҵ�, �����ڸ� ����
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	// ����Ŭ ����
	public void getConnection()
	{
		try {
			conn=DriverManager.getConnection(URL,"scott","tiger");
			// conn scott/tiger  (����Ŭ���� ����)
		} catch (Exception ex) {}
	}
	// ����Ŭ ����	
	public void disConnection()
	{
		try
		{
			if (ps!=null) ps.close();
			if (conn!=null) conn.close();
		} catch(Exception ex){}
	}
	// =================== �⺻ ����
	// ��� (SQL => ����, ���)
	// �α���
	
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