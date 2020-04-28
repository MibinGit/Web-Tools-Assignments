package controller;

import pojos.MoviePojo;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class MovieValidator implements Validator
{
    @Override
    public boolean supports(Class clazz)  //用于比较传入的数据类型是不是MoviePojo.class里的数据类型
    {
        return clazz.equals(MoviePojo.class);
    }

    @Override
    public void validate(Object obj, Errors err)  //需要将MoviePojo这个类作为object存入
    {
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "title", "title.required", "title invalid");  //判断前四个输入框是否为空值
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "actor", "actor.required", "actor invalid");
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "actress", "actress.required", "actress invalid");
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "genre", "genre.required", "genre invalid");
        MoviePojo movieObj = (MoviePojo) obj;

        if(movieObj.getYear() == 0)  //判断创建时间输入框是否为空
        {
            ValidationUtils.rejectIfEmptyOrWhitespace(err, "year","year.required", "year invalid");  //输出year invalid
        }

        else  //还需判断创建时间输入框是否超过了最大和最小范围
        {
            if(movieObj.getYear() > 2050 || movieObj.getYear() < 1600)
            {
                err.rejectValue("year", "year.required", "year is out of range");  //输出year is out of range
            }
        }
    }
}