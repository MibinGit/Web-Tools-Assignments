/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package come.me.pojo;

/**
 *
 * @author kirito
 */
public class Course
{
    private String courseName;
    private String courseCRN;
    private String username;
    
    public Course()
    {
        
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseCRN() {
        return courseCRN;
    }

    public void setCourseCRN(String courseCRN) {
        this.courseCRN = courseCRN;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
