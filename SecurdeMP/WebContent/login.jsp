<%@ page import ="java.sql.*, org.apache.commons.lang.StringEscapeUtils, pack.DBConnector, pack.AESCrypt" %>
<%
    String userid = StringEscapeUtils.escapeSql(request.getParameter("uname"));
    String pwd = StringEscapeUtils.escapeSql(request.getParameter("pass"));
    DBConnector db = new DBConnector();
    Connection con = db.getConnection();
    Statement st = con.createStatement();
    String aes_enpwd = AESCrypt.encrypt(pwd);
    ResultSet rs;
    String sql_authenticate = "select * from members where uname='" + userid + "' and pass='" + aes_enpwd + "'";
    rs = st.executeQuery(sql_authenticate);
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid username or password! <a href='index.jsp'>try again</a>");
    }
    db.closeConnection();
%>