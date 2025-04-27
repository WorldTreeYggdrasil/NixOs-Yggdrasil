{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    teams-for-linux
    inputs.zen-browser.packages."${system}".twilight
    obs-studio # Screen recording
    openjdk11 # Java for visual paradigm
    vesktop # Custom Discord client
    docker-compose # Allows Controlling Docker From A Single File
    prismlauncher # Mc Client
    temurin-bin-21 # java for gtnhL
  ];
}
