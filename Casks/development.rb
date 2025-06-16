cask "development" do
  version :latest
  sha256 :no_check

  url "https://getctrader.lim.spotwa.re/mac/devbuild/ctrader-devbuild-setup.dmg"
  name "Development cTrader"
  desc "Development cTrader"
  homepage "https://ctrader.com/"

  app "Development cTrader.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/Development cTrader.app"],
                   sudo: false
  end
end

