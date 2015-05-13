
class Gam < Formula
  homepage "https://github.com/jay0lee/GAM"
  url "https://github.com/jay0lee/GAM/archive/v3.45.tar.gz"
  version "3.45"
  sha256 "986d10ff134996de071633f34dc4d0d929844ed6bb896e168f818b43b107ce73"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 3.45'"
  end
end

