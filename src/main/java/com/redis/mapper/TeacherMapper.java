package com.redis.mapper;

import com.redis.pojo.Teachers;

import java.util.List;

public interface TeacherMapper {
    int add(Teachers teachers);

    int deleteById(int id);

    int update(Teachers teachers);

    Teachers queryById(int id);

    List<Teachers> queryAll();

    Teachers queryByName(String name);

}
