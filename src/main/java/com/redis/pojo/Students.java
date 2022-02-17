package com.redis.pojo;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Students {
    private int id;
    private String name;
    private int age;
    private String gender;
    private String grade;
    private String address;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    public Students() {
    }

    public Students(int id, String name, int age, String gender, String grade, String address, Date birthday) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.grade = grade;
        this.address = address;
        this.birthday = birthday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "Students{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", grade='" + grade + '\'' +
                ", address='" + address + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
