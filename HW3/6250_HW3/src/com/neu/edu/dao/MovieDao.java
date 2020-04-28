package com.neu.edu.dao;

import com.neu.edu.pojo.Movie;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class MovieDao
{
    private static MovieDao dops;
    public List<Movie> getMovies()
    {
        Connection connection = null;
        List<Movie> result = null;
        try
        {
            Dao dbdao = new Dao();
            connection = dbdao.getConnection();
            QueryRunner queryRunner = new QueryRunner();
            ResultSetHandler<List<Movie>> h = new BeanListHandler<Movie>(Movie.class);
            String query = "SELECT * FROM moviedb";
            result = queryRunner.query(connection, query, h);
        }

        catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }

        finally
        {
            try
            {
                DbUtils.close(connection);
            }

            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
        return result;

    }


    public int addMovies(String title,String actor,String actress, String genre, int year)
    {
        Connection connection = null;
        int result = 0;
        try
        {
            Dao dbdao = new Dao();
            connection = dbdao.getConnection();
            QueryRunner queryRunner = new QueryRunner();
            String query = "INSERT INTO moviedb (title, actor, actress, genre, year) VALUES (?,?,?,?,?)";
            result = queryRunner.update(connection, query,title,actor,actress,genre,year);
        }

        catch (Exception e)
        {
            e.printStackTrace();
            return 0;
        }

        finally
        {
            try
            {
                DbUtils.close(connection);
            }

            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
        return result;
    }

    public static MovieDao getInstance() throws Exception
    {
        if(dops == null)
        {
            dops = new MovieDao();
        }
        return dops;
    }

    public List<Movie> SearchOps(String type, String keyword)
    {
        Connection connection = null;
        Statement stmt = null;
        List<Movie> returnlist  = new ArrayList<Movie>();
        String sql = "select * from moviedb where " + type + '=' + '"' + keyword + '"' + ";";
        try
        {
            Dao dbdao = new Dao();
            connection = dbdao.getConnection();
            QueryRunner queryRunner = new QueryRunner();
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next())
            {
                Movie nowmovie = new Movie();
                nowmovie.setYear(Integer.parseInt(String.valueOf(rs.getInt("year"))));
                nowmovie.setGenre(rs.getString("genre"));
                nowmovie.setActor(rs.getString("actor"));
                nowmovie.setActress(rs.getString("actress"));
                nowmovie.setTitle(rs.getString("title"));
                returnlist.add(nowmovie);
            }
        }

        catch (Exception e)
        {
            System.out.println("Search Data Fails!");
        }

        finally
        {
            return returnlist;
        }
    }
}
