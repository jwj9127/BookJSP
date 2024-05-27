<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
    request.setCharacterEncoding("UTF-8");
    
    String DB_URL = "jdbc:mysql://localhost:3306/internetproject";
    String DB_ID = "multi";
    String DB_PASSWORD = "abcd";
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

    int commentId = Integer.parseInt(request.getParameter("commentId"));
    int postId = Integer.parseInt(request.getParameter("postId"));

    String deleteQuery = "DELETE FROM clubcomment WHERE commentId = ?";
    PreparedStatement pstmt = con.prepareStatement(deleteQuery);
    pstmt.setInt(1, commentId);
    pstmt.executeUpdate();
    
    pstmt.close();
    con.close();

    response.sendRedirect("BookClubDetail.jsp?postId=" + postId);
%>
