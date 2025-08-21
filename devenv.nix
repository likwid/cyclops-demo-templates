{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.git ];
  languages.go.enable = true;

  enterShell = ''
    git --version
  '';

  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';
}
