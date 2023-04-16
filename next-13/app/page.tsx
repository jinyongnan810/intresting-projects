import Link from "next/link";
import Courses from "./components/Courses";

const HomePage = () => {
  return (
    <>
      <h1>Welcome</h1>
      {/* @ts-expect-error Server Component */}
      <Courses />
    </>
  );
};

export default HomePage;
