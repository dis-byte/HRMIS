package com.redis.pojo;

public class Teachers {
    private int id;//工号
    private String name;
    private int age;
    private String gender;
    //所教科目
    private String subject;


    /**
     * 无参构造函数
     */
    public Teachers() {
    }

    /**
     * 有参构造函数
     * @param name
     * @param age
     * @param gender
     * @param subject
     */

    public Teachers(int id, String name, int age, String gender, String subject) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.subject = subject;
    }

    /**
     * getter和setter方法
     * @return
     */

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

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * toString方法
     * @return
     */
    @Override
    public String toString() {
        return "Teachers{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", subject='" + subject + '\'' +
                '}';
    }
}
