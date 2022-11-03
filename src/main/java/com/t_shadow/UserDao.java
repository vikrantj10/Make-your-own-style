package com.t_shadow;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Queue;

public class UserDao {
	public void Insert(CustomerModel cm) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		PreparedStatement ps = con.prepareStatement("insert into customer(First_Name,Last_Name,Mobile_No,Email,password,State,City,Street)values(?,?,?,?,?,?,?,?);");
		ps.setString(1, cm.getFirst_Name());
		ps.setString(2, cm.getLast_Name());
		ps.setString(3, cm.getMobile_No());
		ps.setString(4, cm.getEmail());
		ps.setString(5, cm.getPassword());
		ps.setString(6, cm.getState());
		ps.setString(7, cm.getCity());
		ps.setString(8, cm.getStreet());
		int count = ps.executeUpdate();
		if(count>0)
	    System.out.println(count+" rows affected ");
		else
		System.out.println("Syntex error");
	}
	public void Insert(DesignerModel dm) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		PreparedStatement ps = con.prepareStatement("insert into designer(First_Name,Last_Name,Mobile_No,Email,password)values(?,?,?,?,?);");
		ps.setString(1, dm.getFirst_Name());
		ps.setString(2, dm.getLast_Name());
		ps.setString(3, dm.getMobile_No());
		ps.setString(4, dm.getEmail());
		ps.setString(5, dm.getPassword());
		int count = ps.executeUpdate();
		if(count>0)
	    System.out.println(count+" rows affected ");
		else
		System.out.println("Syntex error");
	}
	public void getAll(List<ShowUserDetails> list,CustomerModel cm) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		PreparedStatement ps = con.prepareStatement("select o.product_name,o.image,o.ordered_status,o.ordered_Date,o.ordered_delievery,c.street,d.first_name from customer c inner join order_details o on c.cust_id = o.cust_id inner join designer d on d.designer_id = o.designer_id where c.cust_id = ?;");
		ps.setInt(1, cm.getCust_Id());
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			ShowUserDetails sud = new ShowUserDetails();
			sud.setProduct_name(rs.getString(1));
			sud.setImage(rs.getString(2));
			sud.setOrdered_status(rs.getString(3));
			sud.setOrdered_Date(rs.getString(4));
			sud.setOrdered_delievery(rs.getString(5));
			sud.setStreet(rs.getString(6));
			sud.setFirst_name(rs.getString(7));
			list.add(sud);
		}
	}
	public void getAll(List<ShowDesignerDetails> list,DesignerModel dm) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		PreparedStatement ps = con.prepareStatement("select o.order_id, o.image, c.first_name, c.last_name, c.mobile_no, c.city, c.street from designer d inner join order_details o on o.designer_id = d.designer_id inner join customer c on c.cust_id = o.cust_id where d.designer_id = ?;");
		ps.setInt(1, dm.getDesigner_Id());
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			ShowDesignerDetails sdd = new ShowDesignerDetails();
			sdd.setOrder_id(rs.getInt(1));
			sdd.setImage(rs.getString(2));
			sdd.setFirst_name(rs.getString(3));
			sdd.setLast_name(rs.getString(4));
			sdd.setMobile_no(rs.getString(5));
			sdd.setCity(rs.getString(6));
			sdd.setStreet(rs.getString(7));
			list.add(sdd);
		}
	}
	public boolean UpdateOrder(int order_id,String date) throws ClassNotFoundException, SQLException
	{
		boolean f = false;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		String query = "update order_details set ordered_status = \"Checked\",ordered_delievery = ? where order_id = ?;";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, date);
		ps.setInt(2, order_id);
		if(ps.executeUpdate()>0)
		f=true;
		return f;
		
	}
	public void getdesigner(Queue<Integer> q) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
		PreparedStatement ps = con.prepareStatement("select designer_id from designer");
		ResultSet rs = ps.executeQuery();
		while(rs.next())
			q.add(rs.getInt(1));
	}
}
