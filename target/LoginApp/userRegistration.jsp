<%@ page import="java.sql.*"%>
<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/table",
"root", "root");
Statement st = con.createStatement();
int i = st.executeUpdate("insert into new_table(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','"
+ lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
if (i > 0) {
response.sendRedirect("welcome.jsp");
} else {
response.sendRedirect("index.jsp");
}
%>