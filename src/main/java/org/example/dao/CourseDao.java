package org.example.dao;

import org.example.entity.Course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CourseDao {

    private static List<Course> course = new ArrayList<>();
    static {
        Course c = new Course();
        c.setId(1);
        c.setName("Jebaraj");
        c.setInstructor("Dhinesh");
        course.add(c);

    }

    public List<Course> getCourse() {
        return course;
    }
    public void save(Course c) {
        c.setId(course.size() + 1); // auto increment
        course.add(c);
    }
    public void delete(int id) {
        course.removeIf(c -> c.getId() == id);
    }
    public Course getById(int id) {
        for (Course c : course) {
            if (c.getId() == id) {
                return c;
            }
        }
        return null;
    }
    public void update(Course updatedCourse) {
        for (Course c : course) {
            if (c.getId() == updatedCourse.getId()) {
                c.setName(updatedCourse.getName());
                c.setInstructor(updatedCourse.getInstructor());
                break;
            }
        }
    }
}
