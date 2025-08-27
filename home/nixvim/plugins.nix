{
  programs.nixvim.plugins = {

    nvim-autopairs.enable = true;
    nix.enable = true;
    nvim-surround.enable = true;

    mini = {
      enable = true;
      luaConfig.pre = ''
        require('mini.basics').setup {
          options = { basic = true, extra_ui = false, win_borders = 'single' },
          mappings = { windows = true, move_with_alt = true },
          autocommands = { basic = true, relnum_in_visual_mode = true },
        }
        require("mini.move").setup()
      '';
    };

    notify = {
      enable = true;
      settings = {
        #background_colour = "#282c34";
        # level = "warn";
        render = "minimal";
      };
    };

    fzf-lua = {
      enable = true;
      luaConfig.pre = ''
        require("fzf-lua").setup({'ivy'})
      '';
    };

    vim-suda = {
      enable = true;
      autoLoad = true;
    };

    undotree = {
      enable = true;
      settings = {
        focusOnToggle = true;
      };
    };

    treesitter = { 
      enable = true; 
      autoLoad = true;
      #folding = true;
      settings = {
        # auto_install = true;
        highlight.enable = true;
        indent.enable = true;
      };
    };

    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        nil_ls.enable = true;
      };
    };

    coq-nvim = {
      enable = true;
      installArtifacts = true;
      settings = {
        auto_start = "shut-up";
      };
    };

    which-key = {
      enable = true;
      # luaConfig.pre = ''
      # '';
      settings = {
       #show-help = false;
       #colors = false;
        icons = {
          keys = { BS = "bkspace ="; Esc = "esc ="; };
          separator = " ";
          group = "";
        };
        win = { border = "single"; };
      };
    };

    colorizer = {
      enable = true;
      settings = {
        buftypes = [ "*" "!prompt" "!popup" ];
        user_default_options = {
          AARRGGBB = true;
          RRGGBBAA = true;
          always_update = true;
          css = true;
          rgb_fn = true;
          hsl_fn = true;
        };
      };
    };

  };
}
