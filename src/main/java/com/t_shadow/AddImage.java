package com.t_shadow;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Queue;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mysql.cj.Session;

/**
 * Servlet implementation class AddImage
 */
@MultipartConfig
@WebServlet("/AddImage")
public class AddImage extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("image");
		
		String imageFileName=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		
		String uploadPath="C:/Users/hp/Documents/GitHub/Make-your-own-style/src/main/webapp/images/"+imageFileName;  // upload path where we have to upload our actual image
		System.out.println("Upload Path : "+uploadPath);
		
		// Uploading our selected image into the images folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//**********************
		
		//getting database connection (jdbc code)
		Connection connection=null;
		try 
		{
			HttpSession s = request.getSession();
			CustomerModel cm = (CustomerModel)s.getAttribute("cm");
			OrderModel om = new OrderModel();
			String Ordered_Date = request.getParameter("Ordered_Date");
			String Product_Name = request.getParameter("Product_Name");
			String size = request.getParameter("size");
			int qty = Integer.parseInt(request.getParameter("qty"));
			om.setImage(imageFileName);
			om.setOrdered_Date(Ordered_Date);
			om.setProduct_Name(Product_Name);
			om.setQty(qty);
			om.setSize(size);
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shadow","root","root");
			PreparedStatement stmt;
			String query="insert into order_details(Cust_Id,Designer_Id,Image,Ordered_Date,Product_Name,price,qty,size) values(?,?,?,?,?,?,?,?)";
			stmt=connection.prepareStatement(query);
			Queue<Integer> q = (Queue<Integer>) s.getAttribute("q");
			stmt.setInt(1,cm.getCust_Id());
			stmt.setInt(2,q.peek());
			int did = q.remove();
			q.add(did);
			stmt.setString(3,om.getImage());
			stmt.setString(4,om.getOrdered_Date());
			stmt.setString(5,om.getProduct_Name());
			stmt.setInt(6, 299*om.getQty());
			stmt.setInt(7,om.getQty());
			stmt.setString(8, om.getSize());
			int row=stmt.executeUpdate(); // it returns no of rows affected.
			
			if(row>0)
			{
				System.out.println("Image added into database successfully.");
				response.sendRedirect("CustomerWelcomePage.jsp");
			}
			
			else
			{
				System.out.println("Failed to upload image.");
				response.sendRedirect("Designing.jsp");
			}
			
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}


}
