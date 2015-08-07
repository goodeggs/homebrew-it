
class Gam < Formula
  homepage "https://github.com/jay0lee/GAM"
  url "https://github.com/jay0lee/GAM/archive/v3.51.tar.gz"
  version "3.51"
  sha256 "3c2512fa8d8c0c6c3a5e83a561b6198b807692567aea2f0ea1954c7a40665c49"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox (Good Eggs)/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox (Good Eggs)/GAM/oauth2service.json" => "oauth2service.json"
    bin.install_symlink prefix/"gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 3.51'"
  end
end
