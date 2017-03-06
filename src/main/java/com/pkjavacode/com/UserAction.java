	package com.pkjavacode.com;

import com.pkjavacode.com.UserDao;
import org.apache.struts2.dispatcher.SessionMap;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
 
public class UserAction extends ActionSupport {
 

private static final long serialVersionUID = 1L;

String USER_NAME;
/**String USER_ID; */
String OLD_PSWD;
  
public String getUSER_NAME() {
	return USER_NAME;
}

public void setUSER_NAME(String uSER_NAME) {
	USER_NAME = uSER_NAME;
}

/**public String getUSER_ID() {
	return USER_ID;
}

public void setUSER_ID(String uSER_ID) {
	USER_ID = uSER_ID;
}
 */
public String getOLD_PSWD() {
	return OLD_PSWD;
}

public void setOLD_PSWD(String oLD_PSWD) {
	OLD_PSWD = oLD_PSWD;
}

@Override
public String execute() {
	
HttpServletRequest req = ServletActionContext.getRequest();
setUSER_NAME(req.getParameter("USER_NAME"));
/*setUSER_ID(req.getParameter("USER_ID")); */
setOLD_PSWD(req.getParameter("OLD_PSWD"));

UserDao ud = new UserDao();
if (ud.checklogin(getUSER_NAME(), getOLD_PSWD())) {
return SUCCESS;
} else
return ERROR;
}



 
@Override
public void validate() {
 
if ("".equals(getUSER_NAME())) {
addFieldError("USER_NAME", "Name must be filled !");
}
/**if ("".equals(getUSER_ID())) {
addFieldError("USER_ID", "Mandatory Field !");
} */
if("".equals(getOLD_PSWD())){
addFieldError("OLD_PSWD", "Password Cannot be empty !");
}

}
 
}
