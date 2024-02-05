# [Python](https://www.python.org/)

- **Easy to learn and use**: Python has a simple syntax and is relatively easy to learn, making it a great language for beginners to build CLI apps.
- **Fast execution**: Python is known for its fast execution speed, which means that CLI apps built with Python can be run quickly and efficiently.
- **Cross-platform compatibility, platform independence, and easy deployment**: Once a Python program is compiled, it can run on any platform without modification, thanks to the language's design. It can also be easily deployed across different environments and systems, thanks to its flexible installation and deployment options, such as package managers like pip or easy_install.

[Read blog post](https://crushingcode.nisrulz.com/en/posts/cross-compilation-adventures-python/)

---

- Make sure `python3` is available in your PATH. [Install it if it is not.](https://www.python.org/downloads/)
- [Docs](https://docs.python.org/3/tutorial/index.html)
- File: `run.py`

- Compile into executable:

  1. *Using [Nuitika](https://nuitka.net/index.html#what-is-nuitka)*

      - [Install `nuitika` Standard](https://nuitka.net/doc/download.html#pypi)

          ```bash
          python3 -m pip install -U nuitka
          ```

      - Build

        ```bash
        python3 -m nuitka run.py \
        --output-filename=run --onefile \
        --remove-output --quiet
        ```

      > NOTE: This will prompt you to download a C caching tool (to speed up repeated compilation of generated C code). Say `yes` to the question.

      - Optimize the generated executable:

        ```bash
        python3 -m nuitka run.py \
        --output-filename=run --onefile --remove-output \
        --remove-output --quiet \
        --lto=yes
        ```

  1. *Using [PyInstaller](https://pyinstaller.org/en/stable/)*

      - [Install `pyinstaller`](https://nuitka.net/doc/download.html#pypi)

          ```bash
          python3 -m pip install -U pyinstaller
          ```

      - Build

        ```bash
        pyinstaller run.py \
        --onefile --distpath . \
        --log-level ERROR --clean --noconfirm
        ```

      - Optimize the generated executable:

        ```bash
        pyinstaller run.py \
        --onefile --distpath . \
        --log-level ERROR --clean --noconfirm \
        --strip
        ```

- Execute the generated executable:

  ```bash
  ./run
  ```
