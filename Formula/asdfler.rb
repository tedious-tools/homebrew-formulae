class Asdfler < Formula
  desc "Small Rust-based CLI for managing asdf plugins"
  homepage "https://github.com/tedious-tools/asdfler"
  url "https://github.com/tedious-tools/asdfler/archive/refs/tags/0.4.0.tar.gz"
  sha256 "81cb27c8ee53e9a9f9bee662899306f736df698e3f07b63aef2001bfb0a3616e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
