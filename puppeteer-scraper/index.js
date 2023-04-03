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
  // const html = await page.content();
  // fs.writeFileSync("top page.html", html);

  // get title
  // console.log(`title: ${await page.evaluate(() => document.title)}`);
  // get all the links
  // console.log(
  //   `links: ${await page.evaluate(() =>
  //     Array.from(document.querySelectorAll("a"), (e) => e.href)
  //   )}`
  // );

  const coursesWay1 = await page.evaluate(() =>
    Array.from(document.querySelectorAll("#cscourses .card"), (e) => ({
      title: e.querySelector(".card-body h3").innerText,
      level: e.querySelector(".card-body .level").innerText,
      url: e.querySelector(".card-footer a").href,
    }))
  );
  console.log(coursesWay1);

  const coursesWay2 = await page.$$eval("#cscourses .card", (cards) =>
    cards.map((card) => ({
      title: card.querySelector(".card-body h3").innerText,
      level: card.querySelector(".card-body .level").innerText,
      url: card.querySelector(".card-footer a").href,
    }))
  );
  console.log(coursesWay2);

  await browser.close();
};

run();
