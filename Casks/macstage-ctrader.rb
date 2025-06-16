cask "macstage-ctrader" do
    version :latest
    sha256 :no_check
  
    url "https://getctrader.lim.spotwa.re/mac/macstage/ctrader-macstage-setup.dmg"
    name "macstage cTrader"
    desc "macstage"
    homepage "https://ctrader.com/"
  
    app "macstage cTrader.app"
  
    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/macstage cTrader.app"],
                     sudo: false
    end
  end
  
  