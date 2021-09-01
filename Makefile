default: all

# Help message
help:
	@echo "Yasm Project Template"
	@echo
	@echo "Target rules:"
	@echo "    all      - Compiles and generates binary file"
	@echo "    clean    - Clean the project by removing binaries"
	@echo "    help     - Prints a help message with target rules"

all:
	yasm -f elf64 helloworld.s
	ld -o helloworld helloworld.o

	./helloworld

# Rule for cleaning the project
clean:
	@rm -rvf helloworld *.o
