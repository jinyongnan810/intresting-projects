import Link from "next/link";
// if not specified, every component is a React Server-side Component
// pros:
// - load faster
// - seo
// - access directly to db
// cons:
// - not as interactive
// - can't use useState
// - can't use useEffect
const Header = () => {
  return (
    <header className="header">
      <div className="container">
        <div className="logo">
          <Link href="/">Home</Link>
        </div>
        <div className="links">
          <Link href="/about">About</Link>
          <Link href="/about/team">Our Team</Link>
          <Link href="/repos">Code</Link>
        </div>
      </div>
    </header>
  );
};

export default Header;
