class JsonLs < Formula
  desc "JSON Language Server — schema-driven diagnostics, hover, and completion"
  homepage "https://github.com/blvp/json-ls"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.0/json-ls-0.1.0-aarch64-macos.tar.gz"
      sha256 "63f7c9fe007986647cb97426cdc8c1042ef8c4b571fa76e2f223b180848ec365"
    end
    on_intel do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.0/json-ls-0.1.0-x86_64-macos.tar.gz"
      sha256 "301b7ce353ba35b3925e8124f6e9706e08d0e13eeb648fb954094b051a9d1232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.0/json-ls-0.1.0-aarch64-linux.tar.gz"
      sha256 "02fc8c4d7a0e7f09f9e5a6f457eb5be1759e6f06b95e6f6a6e16dbe4b344f6d2"
    end
    on_intel do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.0/json-ls-0.1.0-x86_64-linux.tar.gz"
      sha256 "ea24b92773d53f8995606e9a2be91c53ab8d4551431a40af9bf1eb2430b1a6c5"
    end
  end

  def install
    bin.install "json-ls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/json-ls --version")
  end
end
