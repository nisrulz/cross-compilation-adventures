# [Kotlin/Native](https://kotlinlang.org/docs/reference/native-overview.html)

- **Cross-platform compatibility**: Write once, run anywhere with Kotlin Native.
- **Cross-compilation**: Compile once, run everywhere with Kotlin Native's built-in cross-compilation support.
- **Native performance**: Get the best of both worlds - the ease of use and high-level abstractions of Kotlin paired with the performance optimizations of native compilation.

[Read blog post](https://crushingcode.nisrulz.com/en/posts/cross-compilation-adventures-kotlin-native/)

---

- [Install `kotlinc-native`](https://formulae.brew.sh/cask/kotlin-native#default)
- [Docs](https://kotlinlang.org/docs/native-command-line-compiler.html)
- File: `run.kt`

- Compile into executable:

  ```bash
  kotlinc-native run.kt -o run
  ```

  - Optimize the generated executable:

    ```bash
    kotlinc-native run.kt -o run -opt
    ```

- Execute the generated executable:

  ```bash
  ./run.kexe
  ```
