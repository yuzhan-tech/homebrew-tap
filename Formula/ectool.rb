class Ectool < Formula
  desc "Generic EigenComm firmware flasher and UniLog decoder"
  homepage "https://github.com/yuzhan-tech/ectool"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuzhan-tech/ectool/releases/download/v0.1.0/ectool-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f8d765fbe8d14d99d2a49bee07abf1f2c49db4abe10f9a360063a0ddd390be6"
    else
      url "https://github.com/yuzhan-tech/ectool/releases/download/v0.1.0/ectool-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ec1a359c1c8ec4ea25d88f16773e7223900ec5cd111bc70d2d8f74d9d43d4ac"
    end
  end

  on_linux do
    url "https://github.com/yuzhan-tech/ectool/releases/download/v0.1.0/ectool-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "49ad32fcb5763f58d45c24b59ed4c3c96275a20ead85285345b1c05ddf089fb2"
  end

  def install
    bin.install "ectool"
  end

  test do
    system bin/"ectool", "--help"
  end
end
