package com.me.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author kirito
 */
public class UserDAO
{
    private BasicDataSourse conn;

    public BasicDataSourse getConn() {
        return conn;
    }

    public void setConn(BasicDataSourse conn) {
        this.conn = conn;
    }
    
    Connection connection = null;
    
    try
    {
           connection = conn.getConnection();
           System.out.println("user " + user);
           System.out.println("passord " + password);
           QueryRunner queryRunner = new QueryRunner();
           String query = "SELECT * FROM userstable where UserName=? AND UserPassword=?";
           ResultSetHandler<User> h = new BeanHandler<>(User.class);
           User l = queryRunner.query(connection, query, h, user, password);
           return l;
       } catch (Exception e) {
           e.printStackTrace();
           return null;
       }
   }

   public List<User> getUsers(String searchString) {
       Connection connection = null;
       List<User> result = null;
       try {
           connection = conn.getConnection();
           QueryRunner queryRunner = new QueryRunner();
           ResultSetHandler<List<User>> h = new BeanListHandler<>(User.class);
           String query = "SELECT * FROM userstable where UserName like '" + searchString + "%'";
           result = queryRunner.query(connection, query, h);
           System.out.println("the result of searching for a user" + result);
       } catch (Exception e) {
           e.printStackTrace();
           return null;
       }
       return result;
   }

   public int addUser(String userName, String password) {
       Connection connection = null;
       int result = 0;
       try {
           connection = conn.getConnection();
           QueryRunner queryRunner = new QueryRunner();
           String query = "INSERT INTO userstable (UserName, UserPassword) VALUES( ?,?)";
           result = queryRunner.update(connection, query, userName, password);
           //System.out.println("result of insert"+result);
       } catch (Exception e) {
           e.printStackTrace();
           return 0;
       }
       return result;

   }
}
