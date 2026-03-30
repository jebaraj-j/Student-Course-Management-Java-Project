package org.example.service;
import org.example.dao.CourseDao;
import org.example.entity.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    @Autowired
    CourseDao repository;

    public List<Course> getCourse(){
        return repository.getCourse();
    }
    public void saveCourse(Course c){
        repository.save(c);
    }
    public void deleteCourse(int id) {
        repository.delete(id);
    }
    public Course getCourseById(int id) {
        return repository.getById(id);
    }

    public void updateCourse(Course c) {
        repository.update(c);
    }

}
