package com.redis.service;

import com.redis.pojo.Students;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentService {

    int addStudent(Students students);

    int deleteStudentById(int id);

    int updateStudent(Students students);

    Students queryStudentById(int id);

    List<Students> queryAllStudent();

    Students queryStudentByName(String name);
}
