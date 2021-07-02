# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Asdfler < Formula
  desc "Small Crystal CLI for managing asdf plugins"
  homepage "https://github.com/tedious-tools/asdfler"
  url "https://github.com/tedious-tools/asdfler/archive/refs/tags/0.2.0.tar.gz"
  sha256 "29d5184256d789b0682bd77c72c5780e64c4bf29f36e8941e94c0845f87f28c4"
  license "MIT"

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "pkg-config" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "shards", "build", "--release"
    bin.install "bin/asdfler"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test asdfler`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
  end
end
