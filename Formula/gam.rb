
class Gam < Formula
  homepage "https://github.com/jay0lee/GAM"
  url "https://github.com/jay0lee/GAM/archive/v3.62.tar.gz"
  version "3.62"
  sha256 "10cc5008f241bf290d741fc04c79257a97dacac3e6cf9ffea41cf708fc945ec0"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox (Good Eggs)/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox (Good Eggs)/GAM/oauth2service.json" => "oauth2service.json"
    bin.install_symlink prefix/"gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 3.62'"
  end
end
