package com.t_shadow;

public class OrderModel {
int Order_Id, Cust_Id, Designer_Id;
String Image, Ordered_Status, Ordered_Date, Ordered_Delievery, Product_Name;
public int getOrder_Id() {
	return Order_Id;
}
public void setOrder_Id(int order_Id) {
	Order_Id = order_Id;
}
public int getCust_Id() {
	return Cust_Id;
}
public void setCust_Id(int cust_Id) {
	Cust_Id = cust_Id;
}
public int getDesigner_Id() {
	return Designer_Id;
}
public void setDesigner_Id(int designer_Id) {
	Designer_Id = designer_Id;
}
public String getImage() {
	return Image;
}
public void setImage(String image) {
	Image = image;
}
public String getOrdered_Status() {
	return Ordered_Status;
}
public void setOrdered_Status(String ordered_Status) {
	Ordered_Status = ordered_Status;
}
public String getOrdered_Date() {
	return Ordered_Date;
}
public void setOrdered_Date(String ordered_Date) {
	Ordered_Date = ordered_Date;
}
public String getOrdered_Delievery() {
	return Ordered_Delievery;
}
public void setOrdered_Delievery(String ordered_Delievery) {
	Ordered_Delievery = ordered_Delievery;
}
public String getProduct_Name() {
	return Product_Name;
}
public void setProduct_Name(String product_Name) {
	Product_Name = product_Name;
}

}
