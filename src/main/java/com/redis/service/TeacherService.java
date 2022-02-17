package com.redis.service;

import com.redis.pojo.Teachers;

import java.util.List;

public interface TeacherService {
    int add(Teachers teachers);

    int deleteById(int id);

    int update(Teachers teachers);

    Teachers queryById(int id);

    List<Teachers> queryAll();

    Teachers queryByName(String name);

}
