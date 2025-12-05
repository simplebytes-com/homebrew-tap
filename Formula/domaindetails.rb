class Domaindetails < Formula
  desc "Domain RDAP and WHOIS lookup CLI tool"
  homepage "https://domaindetails.com"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.1/domaindetails-1.0.1-darwin-arm64.tar.gz"
      sha256 "aad0370a257b78a3fb76ed076df7b066c3f73ef3d74b8d10e888742d7c33dd57"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.1/domaindetails-1.0.1-darwin-amd64.tar.gz"
      sha256 "eb134426e2861d04491e96317479d7af63bf558dc249a10f5d7e185a8bd6a1cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.1/domaindetails-1.0.1-linux-arm64.tar.gz"
      sha256 "9d93eb2d5bcb35f5209afd482abb08086ef9a2e666fa58ca0824c3bfe4aca314"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.1/domaindetails-1.0.1-linux-amd64.tar.gz"
      sha256 "4d551dd9b12853c4fe42bf78359fb06d7524e4092f9369706a9b8d12611f0d16"
    end
  end

  def install
    bin.install "domaindetails-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "domaindetails"
  end

  test do
    system "#{bin}/domaindetails", "--version"
  end
end
