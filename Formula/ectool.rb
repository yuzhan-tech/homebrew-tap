class Ectool < Formula
  desc "Generic EigenComm firmware flasher and UniLog decoder"
  homepage "https://github.com/yuzhan-tech/ectool"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuzhan-tech/ectool/releases/download/v0.2.0/ectool-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "270c0e3e8261b94d05abfe5ccd7f771bd115bf4ee8814afc7d3d02eb8e347ea4"
    else
      url "https://github.com/yuzhan-tech/ectool/releases/download/v0.2.0/ectool-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "4ea7141c25a430cc3e14c06871a621f134f7858fcff0b77114b0510882d6f4e2"
    end
  end

  on_linux do
    url "https://github.com/yuzhan-tech/ectool/releases/download/v0.2.0/ectool-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "366bd5a356c3dc4b7678c4cc81566973d4ca980b6d506056c548a354553b6dd9"
  end

  def install
    bin.install "ectool"
  end

  test do
    system bin/"ectool", "--help"
  end
end
