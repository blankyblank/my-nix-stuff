{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
    plugins = {
      no-status = pkgs.yaziPlugins.no-status;
      piper = pkgs.yaziPlugins.piper;
      mount = pkgs.yaziPlugins.mount;
      smart-enter = pkgs.yaziPlugins.smart-enter;
      toggle-pane = pkgs.yaziPlugins.toggle-pane;
      diff = pkgs.yaziPlugins.diff;
      bypass = pkgs.yaziPlugins.bypass;
    };
    initLua =
      ''
      require("no-status"):setup()

      function Tabs.height()
        return 0
      end

      Header:children_add(function()
        if #cx.tabs <= 1 then
          return ""
        end
        local spans = {}
        for i = 1, #cx.tabs do
          local name = ya.truncate(string.format(" %d %s ", i, cx.tabs[i].name), { max = 20 })
          if i == cx.tabs.idx then
            spans[#spans + 1] = ui.Span(" " .. name .. " "):style(th.tabs.active)
          else
            spans[#spans + 1] = ui.Span(" " .. name .. " "):style(th.tabs.inactive)
          end
        end
        return ui.Line(spans)
      end, 9000, Header.RIGHT)
      '';

    keymap = {
      mgr.prepend_keymap = [
        { on = "l"; run = "plugin smart-enter"; desc = "Enter the child directory, or open the file"; }
        { on = "i"; run = "plugin toggle-pane max-preview"; desc = "Maximize or restore preview"; }
        { on = "B"; run = "shell 'bgs -z $@'"; desc = "Set Background"; }

        { on = [ "M" "l" ]; run = "plugin mount"; }
        { on = [ "M" "m" ]; run = "shell 'udevil mount /dev/sda2'"; }
        { on = [ "M" "u" ]; run = "shell 'udevil umount /dev/sda2'"; }
        { on = [ "M" "b" ]; run = "shell 'udevil mount /dev/sdb1'"; }
        { on = [ "M" "B" ]; run = "shell 'udevil umount /dev/sdb1'"; }
        { on = [ "M" "c" ]; run = "shell 'udevil mount /dev/sdc1'"; }
        { on = [ "M" "C" ]; run = "shell 'udevil umount /dev/sdc1'"; }

        { on = [ "g" "m" ]; run = "cd ~/.local/media"; desc = "Goto mounts"; }
        { on = [ "g" "l" ]; run = "cd ~/.local"; desc = "Goto .local"; }
        { on = [ "g" "C" ]; run = "cd /etc/"; desc = "Goto system configs"; }
        { on = [ "g" "d" ]; run = "cd ~/Documents"; desc = "Goto Documents"; }
        { on = [ "g" "D" ]; run = "cd ~/Downloads"; desc = "Goto Downloads"; }
        { on = [ "g" "v" ]; run = "cd ~/Videos"; desc = "Goto Videos"; }
        { on = [ "g" "p" ]; run = "cd ~/Pictures"; desc = "Goto Pictures"; }
        { on = [ "g" "P" ]; run = "cd ~/Public"; desc = "Goto git projects"; }
        { on = [ "g" "s" ]; run = "cd ~/.local/src"; desc = "Goto User Source Files"; }
        { on = [ "g" "S" ]; run = "cd /usr/src"; desc = "Goto System Source Files"; }
      ];
    };
  };
}
