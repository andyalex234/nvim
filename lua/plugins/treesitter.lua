return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "gitignore",
        "astro",
        "cmake",
        "bash",
        "fish",
        "cpp",
        "css",
        "go",
        "html",
        "java",
        "graphql",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "rust",
        "http",
        "php",
        "rust",
        "sql",
        "typescript",
        "yaml",
        "svelte",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
