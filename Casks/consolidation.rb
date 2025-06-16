cask "consolidation" do
    version :latest
    sha256 :no_check
  
    url "https://getctrader.lim.spotwa.re/mac/consbuild/ctrader-consbuild-setup.dmg"
    name "Consolidation cTrader"
    desc "Consolidation cTrader"
    homepage "https://ctrader.com/"
  
    app "Consolidation cTrader.app"
  
    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/Consolidation cTrader.app"],
                     sudo: false
    end
  end
