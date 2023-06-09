import { NextResponse } from "next/server";
import courses from "./data.json";

// access with GET localhost:3000/api/courses
export async function GET(request: Request) {
  // to get search params
  // localhost:3000/api/courses?query=react
  const { searchParams } = new URL(request.url);
  const query = searchParams.get("query");
  if (query) {
    const filteredCourses = courses.filter((c) =>
      c.title.toLowerCase().includes(query.toLowerCase())
    );
    return NextResponse.json(filteredCourses);
  }
  return NextResponse.json(courses);
}

// access with POST localhost:3000/api/courses
export async function POST(request: Request) {
  // to get request body
  const body: { title: string; description: string } = await request.json();
  const { title, description } = body;
  console.log(`title: ${title}, description: ${description}.`);
  return NextResponse.json({ message: "ok" });
}
