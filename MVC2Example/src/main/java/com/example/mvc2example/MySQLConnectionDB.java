package com.example.mvc2example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnectionDB {
    public static Connection getMySQLConnection() throws SQLException {
        String hostName = "localhost";  // Thay thế bằng hostname của bạn
        String dbName = "productdb";  // Thay thế bằng tên database của bạn
        String userName = "root";  // Thay thế bằng username của bạn
        String password = "";  // Thay thế bằng password của bạn

        try {
            return getMySQLConnection(hostName, dbName, userName, password);
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
    }

    public static Connection getMySQLConnection(String hostName, String dbName, String userName, String password) throws SQLException {
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
        Connection conn = DriverManager.getConnection(connectionURL, userName, password);
        return conn;
    }

    public static void main(String[] args) {
        try {
            Connection connection = getMySQLConnection();
            if (connection != null) {
                System.out.println("Kết nối cơ sở dữ liệu thành công.");
            } else {
                System.out.println("Không thể kết nối đến cơ sở dữ liệu.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
