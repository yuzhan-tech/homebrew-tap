class LuatosTools < Formula
  desc "Rust CLI for LuatOS firmware packaging, flashing, and serial monitoring"
  homepage "https://github.com/yuzhan-tech/luatos-tools"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.2.0/luatos-tools-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c82498f255bde88e7945ddf063798dc2b1de1dc486c6251475891332d3691e65"
    else
      url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.2.0/luatos-tools-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "278100ea14a9c1256ea6894b1b25c0c535b1aea0e9de17f8a67ab33a2d8ed7ae"
    end
  end

  on_linux do
    url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.2.0/luatos-tools-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "826296beec82719519d377c1508d15c365f8ba3c6f79090778463595bf0dbd4c"
  end

  def install
    bin.install "luatos-tools"
  end

  test do
    system bin/"luatos-tools", "--help"
  end
end
