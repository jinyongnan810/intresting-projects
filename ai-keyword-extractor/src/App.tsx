import { Container, Box } from "@chakra-ui/react";
import Footer from "./components/Footer";
import Header from "./components/Header";
import TextInput from "./components/TextInput";
const App = () => {
  const extract = async (text: string) => {
    console.log(`text:${text}`);
  };
  return (
    <Box bg="blue.600" color="white" height="100vh" paddingTop={100}>
      <Container maxWidth="3xl" centerContent>
        <Header />
        <TextInput extract={extract} />
        <Footer />
      </Container>
    </Box>
  );
};

export default App;
