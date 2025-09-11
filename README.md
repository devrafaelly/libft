# Libft

A custom C library that reimplements standard library functions and provides additional utility functions.

## Table of Contents

- [Overview](#overview)
- [Functions](#functions)
  - [Libc Functions](#libc-functions)
  - [Additional Functions](#additional-functions)
- [Compilation](#compilation)
- [Usage](#usage)
- [Testing](#testing)

## Overview

Libft is a custom C library project that recreates many of the standard C library functions from scratch. This project helps develop a deeper understanding of these fundamental functions and serves as a foundation for future C projects.

The library is divided into two main categories:
- **Libc functions**: Reimplementations of standard C library functions
- **Additional functions**: Custom utility functions that extend functionality

## Functions

### Libc Functions

**Character Classification and Conversion**
- `ft_isalpha` - Check if character is alphabetic
- `ft_isdigit` - Check if character is numeric
- `ft_isalnum` - Check if character is alphanumeric
- `ft_isascii` - Check if character is ASCII
- `ft_isprint` - Check if character is printable
- `ft_toupper` - Convert character to uppercase
- `ft_tolower` - Convert character to lowercase

**String Functions**
- `ft_strlen` - Calculate string length
- `ft_strchr` - Locate first occurrence of character in string
- `ft_strrchr` - Locate last occurrence of character in string
- `ft_strncmp` - Compare strings up to n characters
- `ft_strnstr` - Locate substring in string with length limit
- `ft_strlcpy` - Copy string with size limit
- `ft_strlcat` - Concatenate strings with size limit

**Memory Functions**
- `ft_memset` - Fill memory with constant byte
- `ft_memcpy` - Copy memory area
- `ft_memmove` - Copy memory area (handles overlap)
- `ft_memchr` - Scan memory for character
- `ft_memcmp` - Compare memory areas
- `ft_bzero` - Zero memory area
- `ft_calloc` - Allocate and zero memory

**String Conversion**
- `ft_atoi` - Convert string to integer
- `ft_strdup` - Duplicate string

### Additional Functions

**String Manipulation**
- `ft_substr` - Extract substring
- `ft_strjoin` - Concatenate two strings
- `ft_strtrim` - Trim characters from beginning and end
- `ft_split` - Split string by delimiter
- `ft_itoa` - Convert integer to string

**String Iteration**
- `ft_strmapi` - Apply function to each character (with index)
- `ft_striteri` - Apply function to each character in-place (with index)

**File Descriptor Functions**
- `ft_putchar_fd` - Output character to file descriptor
- `ft_putstr_fd` - Output string to file descriptor
- `ft_putendl_fd` - Output string with newline to file descriptor
- `ft_putnbr_fd` - Output integer to file descriptor

### Bonus Functions (Linked Lists)

**List Structure**
```c
typedef struct s_list
{
    void            *content;
    struct s_list   *next;
}                   t_list;
```
**List Operations**
- `ft_lstnew` - Create new list element
- `ft_lstadd_front` - Add element at beginning of list
- `ft_lstsize` - Count elements in list
- `ft_lstlast` - Get last element of list
- `ft_lstadd_back` - Add element at end of list
- `ft_lstdelone` - Delete single list element
- `ft_lstclear` - Delete and free entire list
- `ft_lstiter` - Apply function to each list element
- `ft_lstmap` - Create new list by applying function to each element

## Compilation

The library uses a Makefile for compilation with the following rules:

```bash
make        # Compile the library (creates libft.a)
make clean  # Remove object files
make fclean # Remove object files and library
make re     # Recompile everything
```

Compilation flags used:
- `-Wall -Wextra -Werror`
- Compiler: cc

## Usage

1. Clone the repository and compile the library:
```bash
git clone <repository-url> libft
cd libft
make
```

2. Include the header in your C files:
```c
#include "libft.h"
```

3. Compile your project with the library:
```bash
cc -Wall -Wextra -Werror your_file.c -L. -lft
```

### Example Usage

```c
#include "libft.h"
#include <stdio.h>

int main(void)
{
    char *str = "  Hello, World!  ";
    char *trimmed = ft_strtrim(str, " ");
    
    printf("Original: '%s'\n", str);
    printf("Trimmed: '%s'\n", trimmed);
    
    free(trimmed);
    return (0);
}
```

## Testing

The library has been tested with various test cases including:
- Edge cases (NULL pointers, empty strings, etc.)
- Memory leak testing
- Comparison with original libc functions
- Boundary conditions

### Memory Management

Functions that allocate memory (`ft_strdup`, `ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_split`, `ft_itoa`, `ft_calloc`, `ft_lstnew`, `ft_lstmap`) return `NULL` on allocation failure. Always check return values and free allocated memory to prevent memory leaks.

For bonus linked list functions:
- Use `ft_lstclear` to properly free entire lists
- Provide appropriate deletion functions to `ft_lstdelone` and `ft_lstclear`
- `ft_lstmap` creates a new list - remember to free both original and new lists if needed

### Function Behavior

- Functions follow the same behavior as their libc counterparts
- Error handling is consistent with standard library functions
- No global variables are used
- All functions are properly documented in the header file

## Notes

This library serves as a foundation for other 42 School projects and demonstrates proficiency in:
- C programming fundamentals
- Memory management
- String manipulation
- Algorithm implementation
- Code organization and documentation