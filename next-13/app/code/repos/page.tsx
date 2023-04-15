import Link from "next/link";
import { FaStar, FaEye, FaCodeBranch } from "react-icons/fa";

const getRepos = async () => {
  const response = await fetch(
    "https://api.github.com/users/jinyongnan810/repos"
  );
  const repos = await response.json();
  // await new Promise((res) => setTimeout(res, 2000));
  return repos;
};

const ReposPage = async () => {
  const repos: {
    id: string;
    name: string;
    description: string;
    stargazers_count: number;
    forks_count: number;
    watchers_count: number;
  }[] = await getRepos();
  return (
    <div className="repos-container">
      <h2>Repositories</h2>
      <ul className="repo-list">
        {repos.map((repo) => (
          <li key={repo.id}>
            <Link href={`/code/repos/${repo.name}`}>
              <h3>{repo.name}</h3>
              <p>{repo.description}</p>
              <div className="repo-details">
                <span>
                  <FaStar /> {repo.stargazers_count}
                </span>
                <span>
                  <FaCodeBranch /> {repo.forks_count}
                </span>
                <span>
                  <FaEye /> {repo.watchers_count}
                </span>
              </div>
            </Link>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default ReposPage;
