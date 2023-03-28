import { Button, Textarea, useToast } from "@chakra-ui/react";
import { FunctionComponent, useState } from "react";
type ExtractFunction = (text: string) => Promise<void>;
type Props = {
  extract: ExtractFunction;
};
const TextInput: FunctionComponent<Props> = ({ extract }) => {
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
      return;
    }
    extract(text);
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
