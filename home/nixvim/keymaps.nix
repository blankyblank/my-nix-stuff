{
    programs.nixvim.keymaps = [
      {
        action = "<ESC>^i";
        key = "<M-b>";
        mode = "i";
      }
      {
        action = "<End>";
        key = "<M-e>";
        mode = "i";
      }
      {
        action = "0";
        key = "<M-b>";
        mode = "n";
      }
      {
        action = "<End>";
        key = "<M-e>";
        mode = "n";
      }
      {
        action = ":quit<CR>";
        key = "<leader>q";
        mode = "n";
      }
      {
        action = ":wq<CR>";
        key = "<leader>z";
        mode = "n";
      }
      {
        action = ":w<CR>";
        key = "<leader>w";
        mode = "n";
      }
      {
        action = ":tabnext<CR>";
        key = "<leader>tn";
        mode = "n";
      }
      {
        action = ":tabprevious<CR>";
        key = "<leader>tp";
        mode = "n";
      }
      {
        action = ":tabc<CR>";
        key = "<leader>tq";
        mode = "n";
      }
      {
        action = ":SudaWrite<CR>";
        key = "<leader>sw";
        mode = "n";
      }
      {
        action = "<cmd>noh<CR>";
        key = "<Esc>";
        mode = "n";
      }
      {
        mode = "n";
        key = "<leader>ut";
        action = "<cmd>UndotreeToggle<CR>";
        options = {
          desc = "Undotree";
        };
      }
      {
        action = ":lua require'fzf-lua'.files()<CR>";
        key = "<leader>ff";
        mode = "n";
        options = {
          desc = "find files";
        };
      }
      {
        action = ":lua require'fzf-lua.live_grep()<CR>";
        key = "<leader>fg";
        mode = "n";
        options = {
          desc = "live grep search";
        };
      }
      {
        action = ":lua require'fzf-lua'.lgrep_curbuf()<CR>";
        key = "<leader>fc";
        mode = "n";
        options = {
          desc = "search current buffer";
        };
      }
      {
        action = ":lua require'fzf-lua'.helptags()<CR>";
        key = "<leader>fh";
        mode = "n";
        options = {
          desc = "search help tags";
        };
      }
      {
        action = ":lua require'fzf-lua'.oldfiles()<CR>";
        key = "<leader>fo";
        mode = "n";
        options = {
          desc = "find oldfiles";
        };
      }
      {
        action = ":lua require'fzf-lua'.buffers()<CR>";
        key = "<leader>fb";
        mode = "n";
        options = {
          desc = "search buffers";
        };
      }
      {
        action = ":lua require'fzf-lua'.tabs()<CR>";
        key = "<leader>ft";
        mode = "n";
        options = {
          desc = "search tabs";
        };
      }

    ];
}
