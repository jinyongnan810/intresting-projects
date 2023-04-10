const getRepos = async () => {
  const response = await fetch(
    "https://api.github.com/users/jinyongnan810/repos"
  );
  const repos = await response.json();

  return repos;
};

const ReposPage = async () => {
  const repos = await getRepos();
  console.log(JSON.stringify(repos));
  return <div>ReposPage</div>;
};

export default ReposPage;
