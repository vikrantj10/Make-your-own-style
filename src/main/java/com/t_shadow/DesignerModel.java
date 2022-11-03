package com.t_shadow;

public class DesignerModel {
int Designer_Id;
String First_Name, Last_Name, Email, password, Mobile_No;
public String getMobile_No() {
	return Mobile_No;
}
public int getDesigner_Id() {
	return Designer_Id;
}
public void setDesigner_Id(int designer_Id) {
	Designer_Id = designer_Id;
}
public void setMobile_No(String mobile_No) {
	Mobile_No = mobile_No;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getFirst_Name() {
	return First_Name;
}
public void setFirst_Name(String first_Name) {
	First_Name = first_Name;
}
public String getLast_Name() {
	return Last_Name;
}
public void setLast_Name(String last_Name) {
	Last_Name = last_Name;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}

}
