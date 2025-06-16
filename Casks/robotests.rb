cask "robotests" do
    version :latest
    sha256 :no_check
  
    url "https://getctrader.lim.spotwa.re/mac/robotests/ctrader-robotests-setup.dmg"
    name "robotests cTrader"
    desc "robotests cTrader"
    homepage "https://ctrader.com/"
  
    app "robotests cTrader.app"
  
    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/robotests cTrader.app"],
                     sudo: false
    end
  end
  
  