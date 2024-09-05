# **Pipex - Mastering UNIX Pipes in C**

Welcome to **Pipex**, a project designed to deepen your understanding of low-level UNIX mechanisms, specifically **pipes**. This project focuses on essential system-level programming, giving you hands-on experience with process creation, inter-process communication, and file management. These are all crucial concepts for anyone pursuing a career in systems programming, OS development, or low-level software engineering.

## 🚀 **Project Overview**

In this project, you will implement a program that mimics the behavior of a shell pipeline, which involves redirecting input and output between commands using pipes. The core of the project lies in creating a communication flow between processes, just like this UNIX shell command:

```bash
$> < file1 cmd1 | cmd2 > file2
```

Your **pipex** program will connect two commands, redirecting input from a file and outputting the result to another file.

### Example:
```bash
$> ./pipex infile "ls -l" "wc -l" outfile
```
This should work the same as:
```bash
$> < infile ls -l | wc -l > outfile
```

## 🧠 **Key Concepts and Knowledge Acquired**

- **Process Management**: You will work with system calls like `fork()`, which is fundamental in creating new processes in Unix-like operating systems.
  
- **Inter-Process Communication (IPC)**: Through the use of **pipes**, you’ll learn how to pass data between processes, a concept that is at the core of modern multitasking operating systems.
  
- **File Descriptors and Redirection**: By manipulating file descriptors using `dup2()`, you’ll be able to control where input and output streams of a process go, which is a key concept in stream redirection.
  
- **Error Handling**: A robust understanding of error handling in C, learning to manage various system call failures like `execve()`, `open()`, and `close()`.

These concepts form the foundation of **systems programming** and are critical for writing efficient, low-level software. Understanding these mechanisms will give you a strong edge when working in environments that require performance, resource management, and reliability.

## 🔍 **Features**

### Mandatory Part:
- **Pipex Implementation**: Execute two shell commands where the output of the first is piped as input to the second.
- **Error Handling**: Handle all possible errors gracefully, ensuring no memory leaks and proper resource management.
  
### Bonus Features Implemented:
- 🔗 **Multiple Pipe Handling**: Extend the program to handle more than two commands by chaining multiple pipes.
- 📝 **Here-Document Support**: Implement the `here_doc` feature to allow input redirection from a delimiter until a specific pattern is matched.

## 🛠️ **How to Build and Run**

### Prerequisites
- **GCC** or any standard C compiler
- **libft** library (optional, if included in the project)

### Steps:
1. Clone this repository:
   ```bash
   git clone https://github.com/Karsp/42-pipex.git
   ```

2. Navigate to the project directory:
   ```bash
   cd 42-pipex
   ```
3. Build the project using the provided `Makefile`:
   ```bash
   make
   ```

4. Run the program with a valid file and shell commands:
   ```bash
   ./pipex file1 "command1" "command2" file2
   ```

### Example Usage:
```bash
$> ./pipex Makefile "grep NAME" "wc -l" outfile
```

## 🏗️ **Project Structure**
- **src/**: Contains all the source code files.
- **libft/**: Contains my custom C library.
- **includes/**: Contains header files for function prototypes and macro definitions.
- **Makefile**: Compiles the project and manages cleaning (clean, fclean), rebuilding (re), and bonus rules.

## 📜 **License**
This project is open-source and available under the [MIT License](LICENSE).

---

Feel free to explore the code, and don't hesitate to reach out with any questions!

