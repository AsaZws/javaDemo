package com.asa.service;

import com.asa.domain.Student;

import java.util.List;

public interface StudentService {

    int addStudent(Student student);
    List<Student> findStudents();

}
