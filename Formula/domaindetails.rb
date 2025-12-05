class Domaindetails < Formula
  desc "Domain RDAP and WHOIS lookup CLI tool"
  homepage "https://domaindetails.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.0/domaindetails-1.0.0-darwin-arm64.tar.gz"
      sha256 "54a9a54942f64cba9b57e027eea764b2e779f549d1d82d047cb7ecff5bc073f4"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.0/domaindetails-1.0.0-darwin-amd64.tar.gz"
      sha256 "bed48ea7e66f21abb9146559b41667591feea13b2d9fc762657b2518e8f615ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.0/domaindetails-1.0.0-linux-arm64.tar.gz"
      sha256 "71d7266f7b172282128a4fd113373c54a1d2ce29e00bfd1f7c6d4cb519dd77a3"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v1.0.0/domaindetails-1.0.0-linux-amd64.tar.gz"
      sha256 "ea0a7a2971d9b75f5cd976e7693f9477e724bdf0755a6417592b7b84114b62c0"
    end
  end

  def install
    bin.install "domaindetails-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "domaindetails"
  end

  test do
    system "#{bin}/domaindetails", "--version"
  end
end
