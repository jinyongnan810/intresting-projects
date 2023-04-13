import Repo from "@/app/components/Repo";

const RepoPage = ({ params: { name } }: { params: { name: string } }) => {
  return (
    <div className="card">
      {/* @ts-expect-error Server Component */}
      <Repo name={name} />
    </div>
  );
};

export default RepoPage;
