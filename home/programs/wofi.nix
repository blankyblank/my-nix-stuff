{
  programs.wofi = {
    enable = true;
    settings = {
      width = "40%";
      height = "45%";
      prompt = "";
      allow_imgages = true;
      hide_scroll = true;
      key_up = "Ctrl-k,Up";
      key_down = "Ctrl-j,Down";
      key_expand = "Shift-Return";
      use_search_box = false;
      terminal = "foot";
    };
    style = ''
      window {
        margin: 5px;
        background-color: rgba(40, 44, 52, 0.1);
        border: 2px solid #C678DD;
      }
      #input {
          margin: 12px 7px 0px 7px;
          padding: 6px 12px 6px 10px;
          background-color: rgba(40, 44, 52, 1.0);
          border: 0px solid rgba(40, 44, 52, 0.0);
      }
      #inner-box {
          margin: 25px 10px;
      }
      #outer-box {
          margin: 7px;
      }
      #scroll {
          margin: 0px;
      }
      #text {
          margin: 3px;
          color: #abb2bf;
      }
      #text:selected {
          background-color: #C678DD;
          color: #282C34;
      }
      #entry:selected {
          background-color: #C678DD;
      }

    '';
  };
}
