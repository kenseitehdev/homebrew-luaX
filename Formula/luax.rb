class Luax < Formula
  desc "Extended Lua programming language"
  homepage "https://github.com/kenseitehdev/luaX"
  version "1.0.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/kenseitehdev/luaX/releases/download/1.0.3/luaX_MacOS_ARM"
    sha256 "c2366125a28fae8490f4a2721dfabeeeb8cfca097aae42e2902b5303ae696098"
  elsif OS.linux?
    url "https://github.com/kenseitehdev/luaX/releases/download/1.0.3/luaX_Nix_x64"
    sha256 "2a5af8903ed6d54503dc838e79cedc877a0dd3ab4060c266c4b081b31831417a"
  end

  def install
    if OS.mac?
      bin.install "luaX_MacOS_ARM" => "luax"
    elsif OS.linux?
      bin.install "luaX_Nix_x64" => "luax"
    end
    chmod 0755, bin/"luax"
  end

  test do
    assert_match "1.0.3", shell_output("#{bin}/luax --version")
  end
end
