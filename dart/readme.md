# [Dart](https://dart.dev)

- **Fast Startup, Efficient Resources**: Dart native ensures swift startup times and optimal resource usage for CLI apps.
- **AOT Compilation Boost**: AOT compilation enhances performance by translating Dart code to native machine code.
- **C Library Integration**: Seamless integration with C libraries expands capabilities for high-performance command-line tool development.

[Read blog post](https://crushingcode.nisrulz.com/en/posts/cross-compilation-adventures-with-dart/)

---

- [Install `dart`](https://formulae.brew.sh/formula/dart-sdk#default)
- [Docs](https://dart.dev/tools/dart-compile)
- File: `run.dart`

- Compile into executable i.e includes the Dart runtime:

  - ```bash
    dart compile exe run.dart --output run
    ```

  - Execute the generated executable:

    ```bash
    ./run
    ```

- Compile into **optimized** executable i.e doesn’t include the Dart runtime:

  - ```bash
    dart compile aot-snapshot run.dart
    ```

  - Execute the generated executable:

    ```bash
    dartaotruntime ./run.aot
    ```
