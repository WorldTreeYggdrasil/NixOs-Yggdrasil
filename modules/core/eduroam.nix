# modules/core/eduroam.nix
{
  config,
  pkgs,
  ...
}: {
  networking.networkmanager.connections = [
    {
      id = "eduroam";
      uuid = "d4b59a23-679e-4867-9286-1dd80aa0571d";
      type = "802-11-wireless";
      autoconnect = true;
      wireless = {
        ssid = "eduroam";
        mode = "infrastructure";
        security = "802-11-wireless-security";
      };
      "802-11-wireless-security" = {
        key-mgmt = "wpa-eap";
        proto = ["RSN"]; # WPA2
        pairwise = ["CCMP"]; # AES
        group = ["CCMP"]; # AES
      };
      "802-1x" = {
        eap = ["ttls"];
        identity = "barmus8375@pwr.edu.pl"; # Replace with your PWr credentials
        anonymous-identity = "anonymous@pwr.edu.pl";
        password = ""; # Consider using a secrets manager
        phase2-auth = "pap";
        # ca-cert = "/path/to/pw.edu.pl-CA-cert.pem"; # Uncomment if needed
      };
    }
  ];
}
