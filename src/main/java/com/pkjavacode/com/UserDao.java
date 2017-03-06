package com.pkjavacode.com;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class UserDao {
public boolean checklogin(String USER_NAME, String OLD_PSWD) {
boolean status = false;
Connection conn = null;
try {
try {
Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}

conn = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/hrms?autoReconnect=true&useSSL=false", "root", "root");
String query = "select USER_NAME, OLD_PSWD from hrms_user_login where USER_NAME=?  and OLD_PSWD=?";
PreparedStatement ps = conn.prepareStatement(query);
ps.setString(1, USER_NAME);
/**ps.setString(2, USER_ID); */
ps.setString(2,OLD_PSWD);
ResultSet rs = ps.executeQuery();
if (rs.next()) {
if (rs.getString("USER_NAME").equals(USER_NAME)&& rs.getString("OLD_PSWD").equals(OLD_PSWD)) {
status = true;
} else {
status = false;
}
 
}
} catch (SQLException e) {
} finally {
if (conn != null)
try {
conn.close();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}
 // this the return statement 

return status;
 
}
 
}
