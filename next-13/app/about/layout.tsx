export const metadata = {
  title: "About Next 13",
  description: "About page of Next.js 13",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div>
      <h1>About layout</h1>
      {children}
    </div>
  );
}
