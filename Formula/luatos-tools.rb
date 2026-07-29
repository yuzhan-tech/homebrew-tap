class LuatosTools < Formula
  desc "Rust CLI for LuatOS firmware packaging, flashing, and serial monitoring"
  homepage "https://github.com/yuzhan-tech/luatos-tools"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.3.0/luatos-tools-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "fa0ce0facf6a242ef49840b2976f9e3c2eda05d37cb149b436e99f5f1f3a4e0e"
    else
      url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.3.0/luatos-tools-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e896bac91b4b84536bf1e5e1bd7c3f338b988ec4cd73568007b7dc52957d8225"
    end
  end

  on_linux do
    url "https://github.com/yuzhan-tech/luatos-tools/releases/download/v0.3.0/luatos-tools-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0bd6001ca8655a2b50031222daf159f6cd1bccd514e910ae7e1bdded5e340b68"
  end

  def install
    bin.install "luatos-tools"
  end

  test do
    system bin/"luatos-tools", "--help"
  end
end
