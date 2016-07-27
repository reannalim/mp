<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sec</title>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>

<% /* MYSQL 
CREATE SCHEMA `sec`;
USE sec;
CREATE TABLE `members` (
`id` int(10) unsigned NOT NULL auto_increment,
`first_name` varchar(45) NOT NULL,
`last_name` varchar(45) NOT NULL,
`email` varchar(45) NOT NULL,
`uname` varchar(45) NOT NULL,
`pass` varchar(45) NOT NULL,
`regdate` date NOT NULL,
PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
*/ %>