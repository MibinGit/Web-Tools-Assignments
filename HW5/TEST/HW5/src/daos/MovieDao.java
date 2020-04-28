package daos;

import pojos.MoviePojo;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.boot.Metadata;
//import org.hibernate.boot.MetadataSources;
//import org.hibernate.boot.registry.StandardServiceRegistry;
//import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MovieDao
{
    private SessionFactory sessionFactory;  //sessionFactory是Hibernate的初始化接口 负责创建session对象 通常一个项目只需要一个sessionFactory对象
    private static Session session;  //初始化静态session对象

    protected SessionFactory setUp() throws Exception
    {
        return createMethod();  //HW5_Part6
//        return createMethodNew();  //HW5_Part7
    }

    public SessionFactory createMethod() throws Exception  //在lab课上直接把这个方法写入了setUp方法中 这里分开写是因为两问有两种创建方式
    {
        System.out.println("The first way to create sessionFactory in HW5_Part6");
        Configuration configuration = new Configuration();  //创建Configuration()方法
        configuration.configure("hibernate.cfg.xml");  //Configuration()方法会自动在classpath路径下寻找hibernate.cfg.xml的配置文件
        try  //如果没有找到hibernate文件则抛出异常
        {
            sessionFactory = configuration.buildSessionFactory();
            System.out.println(sessionFactory);
        }

        catch (Exception e)
        {
            System.out.println(e.getMessage());
        }
        return sessionFactory;  //通过Configuration()方法获取hibernate链接 并返还给sessionFactory对象
    }

   public SessionFactory createMethodNew() throws Exception  //用于Part7的sessionFactory创建方式
   {
       System.out.println("The second way to create sessionFactory in HW5_Part7");
       try  //如果没有找到hibernate文件则抛出异常
       {
           StandardServiceRegistry standardRegistry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  //同样是使用configure()函数获取hibernate.cfg.xml配置文件
           Metadata metaData = new MetadataSources(standardRegistry).getMetadataBuilder().build();  //创建metaData是告诉hibernate你创建的model的过程
           sessionFactory = metaData.getSessionFactoryBuilder().build();
       }

       catch (Throwable th)
       {
           System.err.println("SessionFactory creation failed" + th);
           throw new ExceptionInInitializerError(th);
       }
       return sessionFactory;
   }

    public Session getSession() throws Exception  //创建getSession()对象方法
    {
        if(session == null)
        {
            session = setUp().openSession();
        }
        return session;
    }

    private void beginTransaction() throws Exception  //执行并返回事物对象
    {
        getSession().beginTransaction();
    }

    private void commit() throws Exception  //提交事物
    {
        getSession().getTransaction().commit();;
    }

    private void close() throws Exception  //使用getSession()方法后必须调用close()方法关闭链接
    {
        getSession().close();
    }

    private void rollbackTransaction() throws Exception  //SQL多步操作出现错误时调用此函数
    {
        getSession().getTransaction().rollback();
    }

    public boolean addMovie(MoviePojo movie)  //使用session对象往数据库里添加movie
    {
        boolean result = false;
        try
        {
            beginTransaction();  //调用执行事物方法
            Session session = getSession();  //创建session对象
            session.clear();  //使用clear方法防止session对象中有之前的存储
            session.save(movie);  //将movie信息存储在session对象中
            commit();  //调用提交事物方法
            result = true;
        }

        catch (HibernateException e)
        {
            e.printStackTrace();
            try
            {
                rollbackTransaction();
            }
            catch (Exception ex)
            {
                Logger.getLogger(String.valueOf(movie.getId())).log(Level.SEVERE, null, ex);
            }
        }

        catch (Exception ex)
        {
            Logger.getLogger(String.valueOf(movie.getId())).log(Level.SEVERE, null, ex);
        }

        finally
        {
            try
            {
//                close();  //最终执行调用close()方法关闭数据库链接
            }

            catch (Exception ex)
            {
                Logger.getLogger(String.valueOf(movie.getId())).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

    public List<MoviePojo> searchMovie(String content, String type)  //使用session对象从数据库中搜索movie信息
    {
        List<MoviePojo> movies = new ArrayList<MoviePojo>();
        try
        {
            beginTransaction();  //调用执行事物方法
            Session session = getSession();  //创建session对象
            Query q;  //Query语句
            if(type.equals("title"))  //如果是根据title进行搜索
            {
                if(content.equals("all"))  //如果未输入任何条件 则全部打印
                {
                    q = session.createQuery("from MoviePojo" );
                }

                else
                {
                    q = session.createQuery("from MoviePojo where title=:title");  //如果输入特定title
                    ((org.hibernate.query.Query) q).setString("title", content);
                }
            }

            else if(type.equals("actor"))  //如果是根据actor进行搜索
            {
                q = session.createQuery("from MoviePojo where actor=:actor");
                ((org.hibernate.query.Query) q).setString("actor", content);
            }

            else  //如果是根据actress进行搜索
            {
                q = session.createQuery("from MoviePojo where actress=:actress");
                ((org.hibernate.query.Query) q).setString("actress", content);
            }

            movies = ((org.hibernate.query.Query) q).list();  //将所有从数据库返回的对象赋值给movies List对象
            System.out.println(q.toString());
            commit();  //调用提交事物方法
        }

        catch(HibernateException e)
        {
            e.printStackTrace();
            try
            {
                rollbackTransaction();
            }

            catch (Exception ex)
            {
                Logger.getLogger(MovieDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        catch (Exception ex)
        {
            Logger.getLogger(MovieDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        finally
        {
            try
            {
//                close();  //最终执行调用close()方法关闭数据库链接
            }

            catch (Exception ex)
            {
                Logger.getLogger(MovieDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return movies;
    }
}