<%@ page import ="java.sql.*, org.apache.commons.lang.StringEscapeUtils, pack.DBConnector, pack.AESCrypt" %>
<%
    String user = StringEscapeUtils.escapeSql(request.getParameter("uname"));    
    String pwd = StringEscapeUtils.escapeSql(request.getParameter("pass"));
    String fname = StringEscapeUtils.escapeSql(request.getParameter("fname"));
    String lname = StringEscapeUtils.escapeSql(request.getParameter("lname"));
    String email = StringEscapeUtils.escapeSql(request.getParameter("email"));
    DBConnector db = new DBConnector();
    Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs;
    String aes_enpwd = AESCrypt.encrypt(pwd);
    
    Boolean duplicate = false;
    String sql_userCheck = "select * from members where uname='" + user + "';";
    rs = st.executeQuery(sql_userCheck);
    duplicate |= rs.next();
    String sql_emailCheck = "select * from members where email='" + email + "';";
    rs = st.executeQuery(sql_emailCheck);
    duplicate |= rs.next();
    if (duplicate){
    	response.sendRedirect("reg.jsp?duplicate=1");
    }
    else{
	    String sql_register = "insert into members(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + aes_enpwd + "', CURDATE())";
	    int i = st.executeUpdate(sql_register);
	    if (i > 0) {
	        //session.setAttribute("userid", user);
	        response.sendRedirect("welcome.jsp");
	       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
	    } else {
	        response.sendRedirect("index.jsp");
	    }
	    db.closeConnection();
    }
%>