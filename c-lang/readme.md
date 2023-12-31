# [C Lang](https://www.cprogramming.com/tutorial/c-tutorial.html)

- **Portability**: C's inherent portability enables CLI utilities to run seamlessly on diverse operating systems.
- **Efficiency**: C's low-level nature allows for optimal performance in resource-intensive command-line tools.
- **Standardization**: Widely adopted for system-level programming, C ensures a consistent development experience across platforms in cross-platform CLI utility development.

[Read blog post](https://crushingcode.nisrulz.com/en/posts/cross-compilation-adventures-c/)

---

- [Install `gcc`](https://www.gnu.org/software/gcc/)
- [Docs](https://www.cprogramming.com/tutorial/c-tutorial.html)
- File: `run.c`

- Compile into executable:

  ```bash
  gcc run.c -o run
  ```

  - Optimize the generated executable:

    ```bash
    gcc run.c -o run -O3
    ```

- Execute the generated executable:

  ```bash
  ./run
  ```
