package com.project.spring.Reposity;
import org.springframework.data.jpa.repository.JpaRepository;

import com.project.spring.Model.Student;

public interface StudentInfo extends JpaRepository<Student, Integer> {

}
