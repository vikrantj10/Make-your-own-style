package com.t_shadow;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	public CustomerModel CustomerCheck(String email,String password) throws ClassNotFoundException, SQLException
	{
		CustomerModel ud= null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		PreparedStatement ps = con.prepareStatement("select * from customer where email=? and password=?;");
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			ud= new CustomerModel();
			ud.setCust_Id(rs.getInt(1));
			ud.setFirst_Name(rs.getString(2));
			ud.setLast_Name(rs.getString(3));
			ud.setMobile_No(rs.getString(4));
			ud.setEmail(rs.getString(5));
			ud.setPassword(rs.getString(6));
		    ud.setState(rs.getString(7));
			ud.setCity(rs.getString(8));
			ud.setStreet(rs.getString(9));
		    return ud;
		}
		return ud;
	}
	public DesignerModel DesignerCheck(String email,String password) throws ClassNotFoundException, SQLException
	{
		DesignerModel dm= null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		PreparedStatement ps = con.prepareStatement("select * from designer where email=? and password=?;");
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			dm = new DesignerModel();
			dm.setDesigner_Id(rs.getInt(1));
			dm.setFirst_Name(rs.getString(2));
			dm.setLast_Name(rs.getString(3));
			dm.setMobile_No(rs.getString(4));
			dm.setEmail(rs.getString(5));
			dm.setPassword(rs.getString(6));
		    return dm;
		}
		return dm;
	}
}
