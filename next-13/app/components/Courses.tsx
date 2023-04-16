import Link from "next/link";
import React from "react";

const fetchCourses = async () => {
  const response = await fetch(`http://localhost:3000/api/courses`);
  return response.json();
};
const Courses = async () => {
  const courses: {
    id: string;
    level: string;
    title: string;
    description: string;
    link: string;
  }[] = await fetchCourses();

  return (
    <div className="courses">
      {courses.map((course) => (
        <div className="card" key={course.id}>
          <h2>{course.title}</h2>
          <small>Level: {course.level}</small>
          <p>{course.description}</p>
          <Link href={course.link} target="_blank" className="btn">
            Go to course
          </Link>
        </div>
      ))}
    </div>
  );
};

export default Courses;
