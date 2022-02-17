package com.redis.controller;

import com.redis.pojo.Teachers;
import com.redis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    /**
     * controller调 service 层
     */
    @Autowired
    @Qualifier("TeacherServiceImpl")
    private TeacherService teacherService;

    /**
     * 查询所有教师信息
     * @param model
     * @return
     */
    @RequestMapping("/allTeacher")
    public String list(Model model){
        List<Teachers> list = teacherService.queryAll();
        model.addAttribute("list",list);
        return "allTeacher";
    }


    /**
     * 去添加页面
     * @return
     */
    @RequestMapping("/toAdd")
    public String toAddTeacher(){
        return "addTeacher";
    }
    /**
     * 添加教师
     * @param teachers
     * @return
     */
    @RequestMapping("/addTeacher")
    public String addTeacher(Teachers teachers){
        System.out.println("add=>"+teachers);
        teacherService.add(teachers);
        return "redirect:/teacher/allTeacher";
    }

    /**
     * 去修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        Teachers teachers = teacherService.queryById(id);
        model.addAttribute("QTeacher",teachers);
        return "updateTeacher";
    }

    /**
     * 修改信息
     * @param teachers
     * @return
     */
    @RequestMapping("/updateTeacher")
    public String update(Teachers teachers){
        System.out.println("update=>"+teachers);
        teacherService.update(teachers);
        return "redirect:/teacher/allTeacher";
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") int id){
        teacherService.deleteById(id);
        return "redirect:/teacher/allTeacher";
    }

    /**
     * 搜索框查询
     * @param queryTeacherName
     * @param model
     * @return
     */
    @RequestMapping("/queryTeacher")
    public String queryTeacher(String queryTeacherName, Model model){
        Teachers teachers = teacherService.queryByName(queryTeacherName);
        System.out.println("queryTeacher=>"+teachers);

        List<Teachers> list = new ArrayList<Teachers>();
        list.add(teachers);

        if (teachers == null ){
            list = teacherService.queryAll();
            model.addAttribute("error","未查到");
        }

        model.addAttribute("list",list);
        return "allTeacher";
    }
}
