<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    // 인코딩
    request.setCharacterEncoding("UTF-8");

    // 파라미터 받기
    int postId = Integer.parseInt(request.getParameter("postId"));
    String userId = request.getParameter("userId");
    String content = request.getParameter("content");

    // DB 연결
    String DB_URL = "jdbc:mysql://localhost:3306/internetproject";
    String DB_ID = "multi";
    String DB_PASSWORD = "abcd";
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

    // 댓글 삽입
    String query = "INSERT INTO clubcomment (postId, userId, content, created_at) VALUES (?, ?, ?, NOW())";
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setInt(1, postId);
    pstmt.setString(2, userId);
    pstmt.setString(3, content);
    pstmt.executeUpdate();

    pstmt.close();
    con.close();

    // 페이지 리다이렉션
    response.sendRedirect("BookClubDetail.jsp?postId=" + postId);
%>
