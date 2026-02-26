class JsonLs < Formula
  desc "JSON Language Server — schema-driven diagnostics, hover, and completion"
  homepage "https://github.com/blvp/json-ls"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.1/json-ls-0.1.1-aarch64-macos.tar.gz"
      sha256 "7bf58982cbe9c5db88e9d7b4b907394ff3e1219dce0a689c1eed9ef3b2b125cd"
    end
    on_intel do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.1/json-ls-0.1.1-x86_64-macos.tar.gz"
      sha256 "4e6745bbd6d72796d112073175ca78b58634200b8e8ea89e851611cbc0112f0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.1/json-ls-0.1.1-aarch64-linux.tar.gz"
      sha256 "ed6760b3b29652b81a14c3a709339d826ed7bd26698638757c33db8ab404674e"
    end
    on_intel do
      url "https://github.com/blvp/json-ls/releases/download/v0.1.1/json-ls-0.1.1-x86_64-linux.tar.gz"
      sha256 "6955e0b67ba4132dc3c08daca4fab25964748fcefdf1d3457c9c4d8f8b5222aa"
    end
  end

  def install
    bin.install "json-ls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/json-ls --version")
  end
end
