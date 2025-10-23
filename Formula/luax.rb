class Luax < Formula
  desc "Extended Lua programming language"
  homepage "https://github.com/kenseitehdev/luaX"
  version "1.0.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/kenseitehdev/luaX/releases/download/1.0.2/luaX_MacOS_ARM"
    sha256 "fb7976ee096a54e9b94583c431c7385507b720e0fb626a0abfbb7fe067a5b3c8"
  elsif OS.linux?
    url "https://github.com/kenseitehdev/luaX/releases/download/1.0.2/luaX_Nix_x64"
    sha256 "52994088d055ddd1b8882d0e2cc3ce8da1b885488bd797535dd518b09f20d24c"
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
    assert_match "1.0.2", shell_output("#{bin}/luax --version")
  end
end
