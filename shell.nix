let
  # We pin to a specific nixpkgs commit for reproducibility.
  # Last updated: 2024-04-29.
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/cf8cc1201be8bc71b7cbbbdaf349b22f4f99c7ae.tar.gz") {};

  python = pkgs.python311;
  pythonWithPackages = python.withPackages (ps: with ps; [
    jupyter

    ipython
    ipykernel
    ipympl

    pyqt5

    numpy
    scipy
    pandas
    scikit-learn

    seaborn
    matplotlib
    plotly
  ]);

in pkgs.mkShell rec {
  buildInputs = [ pkgs.ffmpeg pythonWithPackages ];

  shellHook = ''
    jupyter notebook --ip=127.0.0.1 --port 8888 --allow-root
  '';
}
