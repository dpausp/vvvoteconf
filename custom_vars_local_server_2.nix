let
server1Conf = import ./custom_vars_local_server_1.nix;
server2Override = self: super: default: {
  compileWebclient = false;
  serverNumber = 2;
  isTallyServer = true;
  db.name = "vvvote2";
  backend = {
    httpPort = 10002;
  };
};
in composeConfig server1Conf server2Override

