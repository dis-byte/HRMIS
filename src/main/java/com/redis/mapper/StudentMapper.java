package com.redis.mapper;

import com.redis.pojo.Students;

import java.util.List;

public interface StudentMapper {

    int addStudent(Students students);

    int deleteStudentById(int id);

    int updateStudent(Students students);

    Students queryStudentById(int id);

    List<Students> queryAllStudent();

    Students queryStudentByName(String name);


}
