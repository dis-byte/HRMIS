package com.redis.service;

import com.redis.mapper.StudentMapper;
import com.redis.pojo.Students;

import java.util.List;

public class StudentServiceImpl implements StudentService{

    /**
     * 业务层调 mapper(dao) 层
     * service调dao层：组合Dao
     */
    private StudentMapper studentMapper;
    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    /**
     * 添加
     * @param students
     * @return
     */
    public int addStudent(Students students) {
        return studentMapper.addStudent(students);
    }

    /**
     * 通过 id 删除
     * @param id
     * @return
     */
    public int deleteStudentById(int id) {
        return studentMapper.deleteStudentById(id);
    }

    /**
     * 修改数据
     * @param students
     * @return
     */
    public int updateStudent(Students students) {
        System.out.println("StudentServiceImpl：updateStudent=>"+students);
        return studentMapper.updateStudent(students);
    }

    /**
     * 通过id查询
     * @param id
     * @return
     */
    public Students queryStudentById(int id) {
        return studentMapper.queryStudentById(id);
    }

    /**
     * 查询所有的学生
     * @return
     */
    public List<Students> queryAllStudent() {
        return studentMapper.queryAllStudent();
    }

    /**
     * 通过名字查询
     * @param name
     * @return
     */
    public Students queryStudentByName(String name) {
        return studentMapper.queryStudentByName(name);
    }
}
