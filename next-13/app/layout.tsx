import "./globals.css";

export const metadata = {
  title: "Next.js 13 demo",
  description: "Demo of Next.js 13",
  keywords: "Next.js typescript, typescript, React.js",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
