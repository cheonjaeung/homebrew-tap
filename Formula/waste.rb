class Waste < Formula
  desc "Command-line tool to move files and directories to the trash"
  homepage "https://github.com/cheonjaeung/waste"
  url "https://github.com/cheonjaeung/waste/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9753fdc960e2c14e19e35a122edd5b0e72468f2b04a1d70bca18e405a323c824"
  license "Apache-2.0"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"waste", "--version"
  end
end
