//package com.demo.dao;
//
//import com.demo.entity.UserEntity;
//
//import java.sql.*;
//
//public class LoginDao {
//    public boolean validate(UserEntity user) throws ClassNotFoundException {
//        boolean status = false;
//
//        Class.forName("com.mysql.jdbc.Driver");
//
//        try (Connection connection = DriverManager
//                .getConnection("jdbc:mysql://localhost:3306/assigment?useSSL=false", "root", "");
//
//             PreparedStatement preparedStatement = connection.prepareStatement("select * from login where username = ? and password = ?")
//        ) {
//
////             PreparedStatement preparedStatement = connection
////                     .prepareStatement("select * from login where username = ? and password = ? ")) {
//            preparedStatement.setString(1, user.getUsername());
//            preparedStatement.setString(2, user.getPassword());
//
//            System.out.println(preparedStatement);
//            ResultSet rs = preparedStatement.executeQuery();
//            status = rs.next();
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return status;
//    }
//
//    private void printSQLException(SQLException ex) {
//        for (Throwable e: ex) {
//            if (e instanceof SQLException) {
//                e.printStackTrace(System.err);
//                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
//                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
//                System.err.println("Message: " + e.getMessage());
//                Throwable t = ex.getCause();
//                while (t != null) {
//                    System.out.println("Cause: " + t);
//                    t = t.getCause();
//                }
//            }
//        }
//    }
//}
//
