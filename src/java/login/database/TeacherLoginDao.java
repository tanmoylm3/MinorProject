/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login.database;

import DaoImplement.DbConnectionImpl;
import DaoInterface.QueryInterface;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import login.bean.LoginBean;

/**
 *
 * @author Tanmoy
 */
public class TeacherLoginDao {
    public boolean validate(LoginBean loginBean1) throws ClassNotFoundException {
        boolean status = false;

       
        Connection connection=null;

        try {
            connection =  DbConnectionImpl.getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement=connection.prepareStatement(QueryInterface.MatchTeacherLoginInfoSQL);
            preparedStatement.setString(1, loginBean1.getUsername());
            preparedStatement.setString(2, loginBean1.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        
        }catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}


