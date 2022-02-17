package com.redis.controller;

import com.redis.pojo.Students;
import com.redis.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {


    //controller调 service 层
    @Autowired
    @Qualifier("StudentServiceImpl")
    private StudentService studentService;

    /**
     * 查询所有学生信息
     * @param model
     * @return
     */
    @RequestMapping("/allStudent")
    public String list(Model model){
        List<Students> list = studentService.queryAllStudent();
        model.addAttribute("list",list);
        return "allStudent";
    }

    /**
     * 跳转到添加页面
     * @return
     */
    @RequestMapping("/toAddStudent")
    public String toAddStudent(){
        return "addStudent";
    }

    /**
     * 添加学生人数请求
     * @param students
     * @return
     */
    @RequestMapping("/addStudent")
    public String addStudent(Students students){
        System.out.println("addStudent=>"+students);
        studentService.addStudent(students);
        //重定向到@RequestMapping("/allStudent")请求
        return "redirect:/student/allStudent";
    }

    /**
     * 跳转到修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/toUpdate")
    public String toUpdatePage(int id,Model model){
        Students students = studentService.queryStudentById(id);
        model.addAttribute("QStudent",students);
        return "updateStudent";
    }

    /**
     * 修改学生信息
     * @param students
     * @return
     */
    @RequestMapping("/updateStudent")
    public String updateStudent(Students students){
        System.out.println("updateStudent=>"+students);
        studentService.updateStudent(students);
        return "redirect:/student/allStudent";
    }

    /**
     * 删除学生信息
     * @param id
     * @return
     */
    @RequestMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable("id") int id){
        studentService.deleteStudentById(id);
        //return "allStudent";
        return "redirect:/student/allStudent";
    }

    /**
     * 搜索框查询
     * @param queryStudentName
     * @param model
     * @return
     */
    @RequestMapping("/queryStudent")
    public String queryStudent(String queryStudentName,Model model){
        Students students = studentService.queryStudentByName(queryStudentName);
        System.out.println("queryStudent=>"+students);

        List<Students> list = new ArrayList<Students>();
        list.add(students);

        if (students==null){
            list = studentService.queryAllStudent();
            model.addAttribute("error","未查到");

        }

        model.addAttribute("list",list);
        return "allStudent";
    }
}
