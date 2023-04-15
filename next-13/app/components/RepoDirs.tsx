import Link from "next/link";

const fetchRepoContents = async (name: string) => {
  const response = await fetch(
    `https://api.github.com/repos/jinyongnan810/${name}/contents`
  );
  const repo = await response.json();
  await new Promise((res) => setTimeout(res, 2000));
  return repo;
};

const RepoDirs = async ({ name }: { name: string }) => {
  const contents: { type: string; path: string }[] = await fetchRepoContents(
    name
  );
  const dirs = contents.filter((content) => content.type == "dir");
  return (
    <>
      <h3>Directories</h3>
      <ul>
        {dirs.map((dir) => (
          <li key={dir.path}>
            <Link href={`/code/repos/${name}/${dir.path}`}>{dir.path}</Link>
          </li>
        ))}
      </ul>
    </>
  );
};

export default RepoDirs;
