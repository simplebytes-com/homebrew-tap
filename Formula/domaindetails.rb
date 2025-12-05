class Domaindetails < Formula
  desc "Domain RDAP and WHOIS lookup CLI tool"
  homepage "https://domaindetails.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.0/domaindetails-0.1.0-darwin-arm64.tar.gz"
      sha256 "3d6dfedc744b79e5566ce7a0966d7333853eb630ee58ec1619f39b5df409a5ac"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.0/domaindetails-0.1.0-darwin-amd64.tar.gz"
      sha256 "cfa11df94b70603452eccb38a45d0d363b12a2783a7152ae14c86aeb42d0309b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.0/domaindetails-0.1.0-linux-arm64.tar.gz"
      sha256 "ab1b30f64819d34fd400ea96df56120cb3bfc27d8221867884ffe35655068bfb"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.0/domaindetails-0.1.0-linux-amd64.tar.gz"
      sha256 "cc1d245f2433e44d3552425509ccc062c42be119e66bb47982853d45f92653e5"
    end
  end

  def install
    bin.install "domaindetails-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "domaindetails"
  end

  test do
    system "#{bin}/domaindetails", "--version"
  end
end
