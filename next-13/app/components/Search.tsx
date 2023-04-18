"use client";

import { useState } from "react";
import { Course } from "./Courses";

const Search = ({
  updateCourses,
}: {
  updateCourses: (newCourses: Course[]) => void;
}) => {
  const [term, setTerm] = useState("");
  const onSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const res = await fetch(`/api/courses?query=${term}`);
    const data = await res.json();
    updateCourses(data);
  };
  return (
    <form onSubmit={onSubmit} className="search-form">
      <input
        type="text"
        className="search-input"
        placeholder="Search courses"
        value={term}
        onChange={(e) => setTerm(e.target.value)}
      />
      <button className="search-button" type="submit">
        Search
      </button>
    </form>
  );
};

export default Search;
