package com.neu.edu.pojo;

import java.util.List;

public class CSV
{
    private List<String> title;
    private List<List<String>> contents;

    public CSV()
    {
        this.title = title;
        this.contents = contents;
    }

    public List<String> getTitle()
    {
        return title;
    }

    public void setTitle(List<String> title)
    {
        this.title = title;
    }

    public List<List<String>> getContents()
    {
        return contents;
    }

    public void setContents(List<List<String>> contents)
    {
        this.contents = contents;
    }
}
