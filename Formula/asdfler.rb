class Asdfler < Formula
  desc "Small Rust-based CLI for managing asdf plugins"
  homepage "https://github.com/tedious-tools/asdfler"
  url "https://github.com/tedious-tools/asdfler/archive/refs/tags/0.4.1.tar.gz"
  sha256 "eadcc411a75b6b443187ac07913535eeac282c5bfee7774dbaf9a090ec057bb5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
