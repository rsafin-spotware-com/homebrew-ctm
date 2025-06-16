cask "spotware-ctrader" do
    version :latest
    sha256 :no_check
  
    url "https://getctrader.lim.spotwa.re/mac/spotware/ctrader-spotware-setup.dmg"
    name "Spotware cTrader"
    desc "Spotware"
    homepage "https://ctrader.com/"
  
    app "cTrader.app"
  
    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/cTrader.app"],
                     sudo: false
    end
  end
  
  