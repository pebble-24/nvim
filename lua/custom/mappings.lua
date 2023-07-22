local M = {}

M.general = {
  n = {

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<F5>"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<F6>"] = {
      "<cmd> DapStepOver <CR>",
      "Step over function",
    },
    ["<F7>"] = {
      "<cmd> DapStepInto <CR>",
      "Step into function",
    },
    ["<F8>"] = {
      "<cmd> DapStepOut <CR>",
      "Step out function",
    },
    ["<F9>"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate debugger",
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "Update crates"
    }
  }
}
return M
