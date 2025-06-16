cask "macdev" do
    version :latest
    sha256 :no_check
  
    url "https://getctrader.lim.spotwa.re/mac/macdev/ctrader-macdev-setup.dmg"
    name "macdev cTrader"
    desc "macdev cTrader"
    homepage "https://ctrader.com/"
  
    app "macdev cTrader.app"
  
    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/macdev cTrader.app"],
                     sudo: false
    end
  end
  
  