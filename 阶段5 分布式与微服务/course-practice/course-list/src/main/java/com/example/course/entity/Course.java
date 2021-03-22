package com.example.course.entity;

import lombok.Data;

import java.io.Serializable;

@Data

public class Course implements Serializable {
    Integer id;
    Integer courseId;
    String courseName;
    Integer valid;
}
