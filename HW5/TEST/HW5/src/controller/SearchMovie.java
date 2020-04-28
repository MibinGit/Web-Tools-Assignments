package controller;

import daos.MovieDao;
import pojos.MoviePojo;
import pojos.SearchPojo;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class SearchMovie extends SimpleFormController  //使用了简单表单提交
{
    public SearchMovie()  //创建自身的构造函数SearchMovie()
    {
        this.setCommandClass(SearchPojo.class);  //与SearchPojo.class相映射
        this.setCommandName("SearchPojo");  //设定映射的名字为SearchPojo
    }

    @Override
    protected void onBindAndValidate(HttpServletRequest request, Object command, BindException errors) throws Exception  //调用onBindAndValidate()函数验证用户输入的数据是否合法
    {
        super.onBindAndValidate(request, command, errors);  //如果验证失败 则修改errors参数 并重新绑定到ModelAndView上重新提交
    }

    @Override
    protected ModelAndView onSubmit(Object command, BindException errors) throws Exception  //ModelAndView 提交表单的一个方法
    {
        SearchPojo result = (SearchPojo) command;  //将SearchPojo实例化为result
        MovieDao moviedao = (MovieDao) getApplicationContext().getBean("MovieDao");  //调用已写好的MovieDao 以此来使用MovieDao中的searchMovie()函数
        List<MoviePojo> movieList = moviedao.searchMovie(result.getKeyword(), result.getType());  //通过调用get()函数获取word和type作为searchMovie(String content, String type)函数的传入值
        return new ModelAndView(this.getSuccessView(),"movies", movieList);  //使用ModelAndView将搜索到的满足条件的movieList全部返回
    }
}