<div align="center">

<img src="./assets/nix-snowflake-nord.svg" width="120px">

# <samp>🌟 Infinity-Glass theme for NixOS 🌟</samp>

![GitHub Repo stars](https://img.shields.io/github/stars/Rouzihiro/infinity-glass-icons?style=for-the-badge&labelColor=2e3440&color=5e81ac) ![GitHub last commit](https://img.shields.io/github/last-commit/Rouzihiro/infinity-glass-icons?style=for-the-badge&labelColor=2e3440&color=5e81ac) ![GitHub repo size](https://img.shields.io/github/repo-size/Rouzihiro/infinity-glass-icons?style=for-the-badge&labelColor=2e3440&color=5e81ac)

## <samp>🌀 The long awaited launch of plasma 6 has finally arrived if you want to make it even more beautiful and elegant infinity glass is the perfect theme for you. This repository aims to **port the icon theme** to **NixOS** using **flakes**.</samp>

</div>

## 📥 Installation

1. Add the following to your `flake.nix`:

    ```nix
    inputs = {
      infinity-glass.url = "github:Rouzihiro/infinity-glass-icons";
      ...
    }
    ```

2. Apply icon theme using [Home Manager](https://nix-community.github.io/home-manager/):

    ```nix
    {
      inputs,
      pkgs,
      ...
    }: {
    gtk = {
      enable = true;
      iconTheme = {
        package = inputs.infinity-glass.packages."${pkgs.system}".default;
        name = "Infinity";
      ;
    };
    ```

## 💬 Contributing

We ❤️ contributions! Feel free to fork the repository, create a branch, and submit a pull request!

### How to Contribute
1. Fork the repository.
2. Create a new branch.
3. Make your changes and commit them.
4. Open a pull request with a clear description of the changes.

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](./LICENSE) file for more details.
