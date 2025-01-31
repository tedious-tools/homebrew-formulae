class B64 < Formula
  desc "Small CLI for quickly decoding and encoding utf8 base64"
  homepage "https://github.com/tedious-tools/b64"
  url "https://github.com/tedious-tools/b64/archive/refs/tags/0.1.0.tar.gz"
  sha256 "f2a77650acb47bad08bbb197f784f72401109d2187e589e3b090f2476f7078b6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
