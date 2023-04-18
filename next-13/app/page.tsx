"use client";
import Link from "next/link";
import Courses, { Course } from "./components/Courses";
import { useEffect, useState } from "react";
import Loading from "./loading";
import Search from "./components/Search";

const HomePage = () => {
  const [courses, setCourses] = useState<Course[]>([]);
  const [loading, setLoading] = useState(true);
  useEffect(() => {
    const fetchCourses = async () => {
      const res = await fetch("/api/courses");
      const data = await res.json();
      setCourses(data);
      setLoading(false);
    };
    fetchCourses();
  }, []);
  if (loading) {
    return <Loading />;
  }
  return (
    <>
      <h1>Welcome</h1>
      <Search updateCourses={(newCourses) => setCourses(newCourses)} />
      <Courses courses={courses} />
    </>
  );
};

export default HomePage;
