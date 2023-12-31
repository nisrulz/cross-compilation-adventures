# [Go](https://go.dev/)

- Excellent cross-compilation support.
- Produces statically linked binaries, simplifying distribution.
- Concise syntax and strong standard library.

[Read blog post](https://crushingcode.nisrulz.com/en/posts/cross-compilation-adventures-go/)

---

- [Install `go-lang`](https://formulae.brew.sh/formula/go#default)
- [Docs](https://gobyexample.com/command-line-arguments)
- File: `run.go`

- Compile into executable:

  ```bash
  go build run.go
  ```

  - Optimize the generated executable:

    ```bash
    go build -ldflags "-s -w" run.go
    ```

    > **NOTE**: `-s` omits the symbol table and debug information, `-w` omits the DWARF symbol table

- Execute the generated executable:

  ```bash
  ./run
  ```
