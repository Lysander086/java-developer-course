package com.example.course.dao;

import com.example.course.entity.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CourseMapper {

    @Select("SELECT * FROM course FROM WHERE valid = 1")
    List<Course> findValidCourses();
}
