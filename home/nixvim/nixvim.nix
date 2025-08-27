{ inputs, pkgs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    package = pkgs.neovim-unwrapped;
    defaultEditor = true;
    vimdiffAlias = true;
    vimAlias = true;
    viAlias = true;
    colorscheme = "onedark";
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    performance = { 
      byteCompileLua = {
        enable = true;
        nvimRuntime = true;
        plugins = true;
      };
    };
    opts = {
      number = true;
      relativenumber = true;
      cursorline = true;
      clipboard = "unnamedplus";
      mouse = "";
      undofile = true;
      backup = true;
      backupdir = "/home/blank/.local/state/nvim/backup";
      showcmd = false;
      laststatus = 3;
      breakindent = true;
      ignorecase = true;
      smartcase = true;
      signcolumn = "number";
      timeoutlen = 200;
      list = true;
      inccommand = "split";
      scrolloff = 38;
      expandtab = true;
      smartindent = true;
      tabstop = 2;
      shiftwidth = 2;
      termguicolors = true;
    };

  };
}
