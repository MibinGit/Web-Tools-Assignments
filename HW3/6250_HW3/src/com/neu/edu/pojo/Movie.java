package com.neu.edu.pojo;

public class Movie
{
    private int year;
    private String title;
    private String actor;
    private String actress;
    private String genre;

    public Movie(int year, String title, String actor, String actress, String genre)
    {
        this.year = year;
        this.title = title;
        this.actor = actor;
        this.actress = actress;
        this.genre = genre;
    }

    public Movie()
    {

    }

    public int getYear()
    {
        return year;
    }

    public void setYear(int year)
    {
        this.year = year;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getActor()
    {
        return actor;
    }

    public void setActor(String actor)
    {
        this.actor = actor;
    }

    public String getActress()
    {
        return actress;
    }

    public void setActress(String actress)
    {
        this.actress = actress;
    }

    public String getGenre()
    {
        return genre;
    }

    public void setGenre(String genre)
    {
        this.genre = genre;
    }
}
