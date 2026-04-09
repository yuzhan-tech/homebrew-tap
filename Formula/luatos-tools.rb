class LuatosTools < Formula
  desc "Rust CLI for LuatOS firmware packaging, flashing, and serial monitoring"
  homepage "https://github.com/yuzhan-tech/luatos-tools"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.1.0/luatos-tools-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "230feaff1c7e3512f865b14506c66514970d4ecff0be6812e9e0c6f7d7031366"
    else
      url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.1.0/luatos-tools-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f71b70a1338757b2b5c81d1ed9c6911c53752325ebd01d68c554678fe0ffe4fa"
    end
  end

  on_linux do
    url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.1.0/luatos-tools-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f91fcb65c0e3b2f69adf8b91f0f14e19e7d952911371144f69706289d50b125d"
  end

  def install
    bin.install "luatos-tools"
  end

  test do
    system bin/"luatos-tools", "--help"
  end
end
