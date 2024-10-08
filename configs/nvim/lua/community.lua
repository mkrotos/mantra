-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.test.neotest" },

  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },

  { import = "astrocommunity.code-runner.sniprun" },
  { import = "astrocommunity.comment.mini-comment" },
  { import = "astrocommunity.motion.flash-nvim" }, -- s or S
  -- { import = "astrocommunity.motion.mini.move" }, -- Alt + hjkl; Fails to install
}
