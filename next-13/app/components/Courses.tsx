import Link from "next/link";
import React from "react";
export type Course = {
  id: string;
  level: string;
  title: string;
  description: string;
  link: string;
};
const Courses = ({ courses }: { courses: Course[] }) => {
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
