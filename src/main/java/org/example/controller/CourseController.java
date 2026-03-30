package org.example.controller;

import org.example.entity.Course;
import org.example.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;



import java.util.List;

@Controller
public class CourseController {

    @Autowired
    CourseService service;


    @GetMapping("/")
    public String home(Model model) {

        List<Course> list = service.getCourse();
        model.addAttribute("courses",list);

        return "home";
    }
    @GetMapping("/add")
    public String addPage() {
        return "addCourse"; // loads addCourse.jsp
    }
    @PostMapping("/save")
    public String saveCourse(@RequestParam String name,
                             @RequestParam String instructor) {

        Course c = new Course();
        c.setName(name);
        c.setInstructor(instructor);

        service.saveCourse(c);

        return "redirect:/";
    }
    @GetMapping("/delete")
    public String deleteCourse(@RequestParam int id) {

        service.deleteCourse(id);

        return "redirect:/";
    }
    @GetMapping("/edit")
    public String editCourse(@RequestParam int id, Model model) {

        Course c = service.getCourseById(id);

        model.addAttribute("course", c);

        return "editCourse";
    }


    @PostMapping("/update")
    public String updateCourse(@RequestParam int id,
                               @RequestParam String name,
                               @RequestParam String instructor) {

        Course c = new Course();
        c.setId(id);
        c.setName(name);
        c.setInstructor(instructor);

        service.updateCourse(c);

        return "redirect:/";
    }
}