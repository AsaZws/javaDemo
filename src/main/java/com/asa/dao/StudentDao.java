package com.asa.dao;

import com.asa.domain.Student;

import java.util.List;

public interface StudentDao {

    int insertStudent(Student student);
    List<Student> selectStudents();

}
