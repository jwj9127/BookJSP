<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
    request.setCharacterEncoding("UTF-8");
    
    String DB_URL = "jdbc:mysql://localhost:3306/internetproject";
    String DB_ID = "multi";
    String DB_PASSWORD = "abcd";
    Connection con = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

        int commentId = Integer.parseInt(request.getParameter("commentId"));
        String content = request.getParameter("content");

        if (content != null && !content.isEmpty()) {
            String updateQuery = "UPDATE clubcomment SET content = ?, created_at = NOW() WHERE commentId = ?";
            pstmt = con.prepareStatement(updateQuery);
            pstmt.setString(1, content);
            pstmt.setInt(2, commentId);
            pstmt.executeUpdate();
        } else {
            // content가 null이거나 비어 있을 경우 처리할 내용
            // 예: 사용자에게 오류 메시지를 표시하거나, 다른 작업을 수행할 수 있음
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 리다이렉트는 POST 요청에 대한 응답으로 사용되어서는 안 됩니다.
    // 대신, 리다이렉트는 클라이언트 측에서 GET 요청을 수행하도록 안내해야 합니다.
    response.sendRedirect("BookClubDetail.jsp?postId=" + request.getParameter("postId"));
%>
