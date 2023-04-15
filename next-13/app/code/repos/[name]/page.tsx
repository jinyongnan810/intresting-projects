import Repo from "@/app/components/Repo";
import RepoDirs from "@/app/components/RepoDirs";
import Link from "next/link";
import { Suspense } from "react";

const RepoPage = ({ params: { name } }: { params: { name: string } }) => {
  return (
    <div className="card">
      <Link href="/code/repos" className="btn btn-back">
        Back to repos
      </Link>
      <Suspense fallback={<div>Loading repo...</div>}>
        {/* @ts-expect-error Server Component */}
        <Repo name={name} />
      </Suspense>
      <Suspense fallback={<div>Loading repo directories...</div>}>
        {/* @ts-expect-error Server Component */}
        <RepoDirs name={name} />
      </Suspense>
    </div>
  );
};

export default RepoPage;
