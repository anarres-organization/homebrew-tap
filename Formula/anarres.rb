class Anarres < Formula
  desc "Native command-line interface for Anarres environment workflows"
  homepage "https://github.com/anarres-organization/anarres"
  version "0.3.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.0/anarres-cli-aarch64-apple-darwin.tar.xz"
      sha256 "c197d19980d8592e059cffa342b5cbae279916d0a8a8ecaeb59d42c75776f8c2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.0/anarres-cli-x86_64-apple-darwin.tar.xz"
      sha256 "c3eaf2022159475489a7e1f10f866b687843cb01cf053fc70c4b56d93fe9d077"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.0/anarres-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "da32679b415e99fb55bce9c57408adb20313ef598fd279d0009cc0683c70b0af"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.0/anarres-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a28ccc8053913e157dfc2b2e08f524d3044679d6e61e43d9d879df60b20c104d"
    end
  end
  license "Apache-2.0"

  def install
    bin.install "anarres"
  end

  test do
    assert_match "anarres #{version}", shell_output("#{bin}/anarres --version")
    assert_match "qualify", shell_output("#{bin}/anarres --help")
  end
end
