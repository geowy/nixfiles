{
  targets.darwin = {
    defaults = {
      "com.apple.dock" = {
        size-immutable = true;
        tilesize = 64;
      };

      "com.apple.Safari" = {
        AutoFillCreditCardData = false;
        AutoFillPasswords = false;
        AutoOpenSafeDownloads = false;
        IncludeDevelopMenu = true;
        ShowOverlayStatusBar = true;
      };

      "com.apple.desktopservices" = {
        DSDontWriteNetworkStores = true;
        DSDontWriteUSBStores = true;
      };

      "com.apple.menuextra.battery".ShowPercent = "YES";

      NSGlobalDomain = {
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;
      };
    };

    keybindings = {
      "^u" = "deleteToBeginningOfLine:";
      "^w" = "deleteWordBackward:";
    };

    search = "Bing";
  };
}
