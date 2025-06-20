{
  description = "A Tidal Cycles project. https://tidalcycles.org/";

  inputs = {
    tidal.url = "github:cmacwill1/tidalcycles";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    inputs:
    inputs.utils.lib.eachDefaultSystem (system: {
      devShells = inputs.tidal.devShells.${system};
      formatter = inputs.tidal.formatter.${system};
    });
}
