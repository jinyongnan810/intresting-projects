import { NextResponse } from "next/server";
import courses from "./data.json";

// access with localhost:3000/api/courses
export async function GET(request: Request) {
  return NextResponse.json(courses);
}
