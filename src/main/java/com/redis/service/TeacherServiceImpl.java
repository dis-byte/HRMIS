package com.redis.service;

import com.redis.mapper.TeacherMapper;
import com.redis.pojo.Teachers;

import java.util.List;

public class TeacherServiceImpl implements TeacherService{

    /**
     * 业务层调 mapper(dao) 层
     * service调dao层：组合Dao
     */
    private TeacherMapper teacherMapper;
    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public int add(Teachers teachers) {
        return teacherMapper.add(teachers);
    }

    @Override
    public int deleteById(int id) {
        return teacherMapper.deleteById(id);
    }

    @Override
    public int update(Teachers teachers) {
        return teacherMapper.update(teachers);
    }

    @Override
    public Teachers queryById(int id) {
        return teacherMapper.queryById(id);
    }

    @Override
    public List<Teachers> queryAll() {
        return teacherMapper.queryAll();
    }

    @Override
    public Teachers queryByName(String name) {
        return teacherMapper.queryByName(name);
    }


}
