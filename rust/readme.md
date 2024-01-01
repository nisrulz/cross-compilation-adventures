# [Rust](https://www.rust-lang.org/)

- Emphasizes memory safety without sacrificing performance.
- Provides fine-grained control over system resources.
- Supports cross-compilation and produces efficient, safe executables.

[Read blog post](https://crushingcode.nisrulz.com/en/posts/cross-compilation-adventures-rust/)

---

- [Install `rust`](https://www.rust-lang.org/tools/install)
- [Docs](https://doc.rust-lang.org/rust-by-example/)
- File: `run.rs`

- Compile into executable:

  ```bash
  rustc run.rs
  ```

  - Optimize the generated executable:

    - For Size

      ```bash
      rustc -C opt-level=z -C link-arg=-s -C codegen-units=1 -C lto run.rs
      ```

      > NOTE:
      >
      > 1. `opt-level=z` : Optimize for smaller binary size
      > 2. `link-arg=-s` : Strip symbol infomration
      > 3. `codegen-units=1` : Increase compile time, but smaller size
      > 4. `lto`: Link time optimizations

    - For Speed

      ```bash
      rustc -C opt-level=3 run.rs
      ```

- Execute the generated executable:

  ```bash
  ./run
  ```
