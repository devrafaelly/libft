# 📚 Libft – 42 C Library  

## Description  

The **libft** project is the very first step at 42.  
It consists in reimplementing standard C library functions and creating additional utilities, in order to build a personal library (`libft.a`) that will be reused in future projects.  

---

## Compilation  

Clone the repository and compile with `make`:  

```bash
git clone https://github.com/devrafaelly/libft.git
cd libft
make
````

This will generate `libft.a`.

---

## Usage

In your C code:

```c
#include "libft.h"

int main(void)
{
    char *s = ft_strdup("Hello, libft!");
    printf("%s\n", s);
    free(s);
    return 0;
}
```

Compile with:

```bash
cc -Wall -Werror -Wextra main.c -L. -lft
```

---

## Testing

You can use external testers to check your implementation:

* [libft-unit-test](https://github.com/alelievr/libft-unit-test)
* [libft-war-machine](https://github.com/0x050f/libft-war-machine)

Or simply write your own tests inside the project.

---

## Project Structure

```
libft/
├── Makefile
├── libft.h
└── ft_*.c
```

---

## Goals

* Reimplement core libc functions
* Gain strong knowledge of memory and string handling in C
* Provide a reusable library for all upcoming 42 projects.

---

## Author

Project developed by [**Rafaelly Diniz**](https://github.com/devrafaelly) as part of the **42 curriculum**.
