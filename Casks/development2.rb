cask "development2" do
    version :latest
    sha256 :no_check
  
    url "https://getctrader.lim.spotwa.re/mac/devbuild2/ctrader-devbuild2-setup.dmg"
    name "Development 2 cTrader"
    desc "Development 2 cTrader"
    homepage "https://ctrader.com/"
  
    app "Development 2 cTrader.app"
  
    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/Development 2 cTrader.app"],
                     sudo: false
    end
  end
  
  