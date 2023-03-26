import { Box, Flex, Image, Text } from "@chakra-ui/react";
import openai from "../assets/openai.png";

const Footer = () => {
  return (
    <Box marginTop={50}>
      <Flex justifyContent="center" alignItems="center">
        <Image src={openai} marginRight={1} />
        <Text>Powered by OpenAI</Text>
      </Flex>
    </Box>
  );
};

export default Footer;
