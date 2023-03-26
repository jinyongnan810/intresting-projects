import { Button, Textarea, useToast } from "@chakra-ui/react";
import { useState } from "react";

const TextInput = () => {
  const [text, setText] = useState("");
  const toast = useToast();
  const submit = () => {
    if (!text) {
      toast({
        title: "Text is empty",
        description: "Please enter the text",
        status: "error",
        duration: 5000,
        isClosable: true,
      });
    }
  };
  return (
    <>
      <Textarea
        bg="blue.400"
        color="white"
        height={200}
        padding={4}
        marginTop={6}
        value={text}
        onChange={(e) => setText(e.target.value)}
      />
      <Button
        bg="blue.500"
        color="white"
        marginTop={4}
        width="100%"
        // way to set on-hover styles
        _hover={{ bg: "blue.700" }}
        onClick={submit}
      >
        Extract Keywords
      </Button>
    </>
  );
};

export default TextInput;
