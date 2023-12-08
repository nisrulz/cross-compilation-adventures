# [Nim](https://nim-lang.org/)

- Focuses on performance, portability, and expressiveness.
- Supports cross-compilation to various platforms.
- Features a lightweight syntax reminiscent of Python.

---

- [Install `nim`](https://formulae.brew.sh/formula/nim#default)
- [Docs](https://narimiran.github.io/nim-basics/)
- File: `run.nim`

- Compile into executable:

  ```bash
  nim c run.nim
  ```

  - Optimize the generated executable:

    ```bash
    nim -d:release --opt:size c run.nim
    ```

- Execute the generated executable:

  ```bash
  ./run
  ```
