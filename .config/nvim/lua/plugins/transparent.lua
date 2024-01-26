return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = {
      extra_groups = {
        "FloatBorder",
        "LSPInfoBorder",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        --"NormalFloat",
        "NotifyDEBUGBody",
        "NotifyDEBUGBorder",
        "NotifyERRORBody",
        "NotifyERRORBorder",
        "NotifyINFOBody",
        "NotifyINFOBorder",
        "NotifyTRACEBody",
        "NotifyTRACEBorder",
        "NotifyWARNBody",
        "NotifyWARNBorder",
        "TelescopeBorder",
        "TelescopePreviewNormal",
        "TelescopePromptNormal",
        "TelescopeResultsNormal",
        "WhichKeyFloat",
      },
      exclude_groups = {},
    },
    keys = {
      {
        "<Leader>uo",
        "<Cmd>TransparentToggle<Cr>",
        desc = "Toggle Transparency",
      },
    },
  },
}
