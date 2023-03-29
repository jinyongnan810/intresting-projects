import { Container, Box } from "@chakra-ui/react";
import { useState } from "react";
import Footer from "./components/Footer";
import Header from "./components/Header";
import KeywordsModal from "./components/KeywordsModal";
import TextInput from "./components/TextInput";
const App = () => {
  const extract = async (text: string) => {
    setLoading(true);
    setIsOpen(true);

    const options = {
      method: "POST",
      headers: {
        "Content-Type": "Application/json",
        Authorization: `Bearer ${import.meta.env.VITE_OPENAI_KEY}`,
      },
      body: JSON.stringify({
        model: "text-davinci-003",
        prompt:
          "Extract keywords from this text. Make the first letter of each word uppercase and separate with commas.\n\n" +
          text,
        // https://platform.openai.com/docs/api-reference/completions/create
        temperature: 0.5, // higher creates creative but sometimes unexpected answers, lower creates more conservative and predictable results.
        max_tokens: 60,
        frequency_penalty: 0.8,
      }),
    };

    const res = await fetch(import.meta.env.VITE_OPENAI_URL, options);
    const json = await res.json();
    const results = json.choices[0].text.trim();

    console.log(`:${results}`);
    setKeywords(results);
    setLoading(false);
  };
  const closeModal = () => {
    setIsOpen(false);
  };
  const [keywords, setKeywords] = useState("");
  const [isOpen, setIsOpen] = useState(false);
  const [loading, setLoading] = useState(false);

  return (
    <Box bg="blue.600" color="white" height="100vh" paddingTop={100}>
      <Container maxWidth="3xl" centerContent>
        <Header />
        <TextInput extract={extract} />
        <Footer />
      </Container>
      <KeywordsModal
        keywords={keywords}
        loading={loading}
        isOpen={isOpen}
        closeModal={closeModal}
      />
    </Box>
  );
};

export default App;
