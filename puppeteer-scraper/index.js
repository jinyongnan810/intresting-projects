const puppeteer = require("puppeteer");
const fs = require("fs");

const run = async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto("https://www.traversymedia.com");

  // snapshot entire page to image
  //   await page.screenshot({ path: "top page.png", fullPage: true });
  // snapshot entire page to pdf
  //   await page.pdf({ path: "top page.pdf", format: "A4" });
  // get entire html
  const html = await page.content();
  // fs.writeFileSync("top page.html", html);

  await browser.close();
};

run();
