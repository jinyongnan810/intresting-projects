import { Poppins } from "next/font/google";
import "./globals.css";
const poppins = Poppins({
  weight: ["400", "700"],
  subsets: ["latin"],
});

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
      <body className={poppins.className}>
        <main className="container">{children}</main>
      </body>
    </html>
  );
}
