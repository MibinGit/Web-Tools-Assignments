package controller;

import daos.MovieDao;
import pojos.MoviePojo;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;

public class AddMovie extends SimpleFormController  //使用了简单表单提交
{
    public AddMovie()  //创建自身的构造函数AddMovie()
    {
        this.setCommandClass(MoviePojo.class);  //与MoviePojo.class相映射
        this.setCommandName("MoviePojo");  //设定映射的名字为MoviePojo
    }

    @Override
    protected void onBindAndValidate(HttpServletRequest request, Object command, BindException errors) throws Exception  //调用onBindAndValidate()函数验证用户输入的数据是否合法
    {
        super.onBindAndValidate(request, command, errors);  //如果验证失败 则修改errors参数 并重新绑定到ModelAndView上重新提交
    }

    @Override
    protected ModelAndView onSubmit(Object command, BindException errors) throws Exception  //ModelAndView 提交表单的一个方法
    {
        MoviePojo movieObj = (MoviePojo) command;  //将MoviePojo实例化为movieObj
        MovieDao moviedao = (MovieDao) getApplicationContext().getBean("MovieDao");  //调用已写好的MovieDao 以此来使用MovieDao中的addMovie(MoviePojo movie)函数
        boolean result = moviedao.addMovie(movieObj);  //将boolean类型的addMovie(MoviePojo movie)返回值赋给result

        if(result == true)  //如果返回的boolean类型为true则说明添加成功
        {
            System.out.println("Add movie information successfully!");
        }

        else
        {
            System.out.println("Add movie information Fails!");
        }
        return new ModelAndView(this.getSuccessView());  //返回ModelAndView的成功函数getSuccessView()
    }
}