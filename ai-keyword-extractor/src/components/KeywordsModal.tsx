import {
  Button,
  CircularProgress,
  Modal,
  ModalBody,
  ModalCloseButton,
  ModalContent,
  ModalFooter,
  ModalHeader,
  ModalOverlay,
  Text,
} from "@chakra-ui/react";
import { FunctionComponent } from "react";

type Props = {
  keywords: string;
  loading: boolean;
  isOpen: boolean;
  closeModal: () => void;
};
const KeywordsModal: FunctionComponent<Props> = ({
  keywords,
  loading,
  isOpen,
  closeModal,
}) => {
  return (
    <>
      <Modal isOpen={isOpen} onClose={closeModal}>
        <ModalOverlay />
        <ModalContent>
          <ModalHeader>Extracted Keywords</ModalHeader>
          <ModalCloseButton />
          <ModalBody display="flex" alignItems="center" justifyContent="center">
            {loading ? (
              <CircularProgress isIndeterminate color="blue.300" />
            ) : (
              <Text>{keywords}</Text>
            )}
          </ModalBody>
          <ModalFooter>
            <Button colorScheme="blue" mr={3} onClick={closeModal}>
              Close
            </Button>
          </ModalFooter>
        </ModalContent>
      </Modal>
    </>
  );
};

export default KeywordsModal;
