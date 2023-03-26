import { Container, Box } from "@chakra-ui/react";
import Footer from "./components/Footer";
import Header from "./components/Header";
import TextInput from "./components/TextInput";
const App = () => {
  return (
    <Box bg="blue.600" color="white" height="100vh" paddingTop={100}>
      <Container maxWidth="3xl" centerContent>
        <Header />
        <TextInput />
        <Footer />
      </Container>
    </Box>
  );
};

export default App;
