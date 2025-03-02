<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

	String course = request.getParameter("course");
	String branch = request.getParameter("branch");
	String rollNo = request.getParameter("rollNo");
	String name = request.getParameter("name");
	String fatherName = request.getParameter("fatherName");
	String gender = request.getParameter("gender");
	
	try{
		Connection cn = ConnectionProvider.getCon();
		Statement st = cn.createStatement();
		st.executeUpdate("INSERT INTO STUDENT VALUES('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
		response.sendRedirect("adminHome.jsp");
	}catch(Exception e){
		out.println(e);
	}

%>