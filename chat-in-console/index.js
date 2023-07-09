import { Configuration, OpenAIApi } from "openai";
import dotenv from "dotenv";

dotenv.config();
console.log(process.env.OPENAI_KEY);
const configuration = new Configuration({
  apiKey: process.env.OPENAI_KEY,
});

const openai = new OpenAIApi(configuration);

const main = async () => {
  //   const models = await openai.listModels();
  //   console.log(models.data.data.forEach((model) => console.log(model.id)));
  // FIXME: always getting exceeding quota error
  const completion = await openai.createChatCompletion({
    model: "gpt-3.5-turbo",
    messages: [{ role: "user", content: "Hello, how are you?" }],
    temperature: 0.7,
  });

  console.log(completion.data.choices[0]);
};

main();
