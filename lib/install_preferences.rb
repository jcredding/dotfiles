require File.expand_path(File.join('..', '_helpers', 'ask'), __FILE__)

module InstallPreferences
  extend Helpers::Ask

  def self.run(config)
    default "NSGlobalDomain", "AppleActionOnDoubleClick",            "string",  "Maximize"
    default "NSGlobalDomain", "AppleAntiAliasingThreshold",          "integer", "4"
    default "NSGlobalDomain", "AppleEnableSwipeNavigateWithScrolls", "bool",    "false"
    default "NSGlobalDomain", "AppleHighlightColor",                 "string",  "0.752941 0.964706 0.678431"
    default "NSGlobalDomain", "AppleInterfaceStyle",                 "string",  "Dark"
    default "NSGlobalDomain", "AppleMiniaturizeOnDoubleClick",       "bool",    "false"
    default "NSGlobalDomain", "AppleShowAllExtensions",              "bool",    "true"
    default "NSGlobalDomain", "AppleShowScrollBars",                 "string",  "Always"
    default "NSGlobalDomain", "InitialKeyRepeat",                    "integer", "30"
    default "NSGlobalDomain", "KeyRepeat",                           "integer", "6"
    default "NSGlobalDomain", "com.apple.keyboard.fnState",          "bool",    "false"
    default "NSGlobalDomain", "com.apple.springing.delay",           "float",   "0.5"
    default "NSGlobalDomain", "com.apple.springing.enabled",         "bool",    "true"
    default "NSGlobalDomain", "com.apple.swipescrolldirection",      "bool",    "false"
    default "NSGlobalDomain", "com.apple.trackpad.forceClick",       "bool",    "false"

    default "com.apple.AppleMultitouchTrackpad", "ActuateDetents",                             "integer", "1"
    default "com.apple.AppleMultitouchTrackpad", "Clicking",                                   "bool",    "true"
    default "com.apple.AppleMultitouchTrackpad", "DragLock",                                   "bool",    "false"
    default "com.apple.AppleMultitouchTrackpad", "Dragging",                                   "bool",    "false"
    default "com.apple.AppleMultitouchTrackpad", "FirstClickThreshold",                        "integer", "1"
    default "com.apple.AppleMultitouchTrackpad", "ForceSuppressed",                            "bool",    "false"
    default "com.apple.AppleMultitouchTrackpad", "SecondClickThreshold",                       "integer", "1"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadCornerSecondaryClick",               "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadFiveFingerPinchGesture",             "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadFourFingerHorizSwipeGesture",        "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadFourFingerPinchGesture",             "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadFourFingerVertSwipeGesture",         "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadHandResting",                        "bool",    "true"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadHorizScroll",                        "integer", "1"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadMomentumScroll",                     "bool",    "true"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadPinch",                              "integer", "1"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadRightClick",                         "boolean", "1"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadRotate",                             "bool",    "false"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadScroll",                             "bool",    "true"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadThreeFingerDrag",                    "bool",    "false"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadThreeFingerHorizSwipeGesture",       "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadThreeFingerTapGesture",              "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadThreeFingerVertSwipeGesture",        "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadTwoFingerDoubleTapGesture",          "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "TrackpadTwoFingerFromRightEdgeSwipeGesture", "integer", "0"
    default "com.apple.AppleMultitouchTrackpad", "USBMouseStopsTrackpad",                      "integer", "0"

    default "com.apple.dock", "largesize",                        "float",  "73"
    default "com.apple.dock", "launchanim",                       "bool",   "false"
    default "com.apple.dock", "magnification",                    "bool",   "true"
    # don't organize spaces by the most recently used
    default "com.apple.dock", "mru-spaces",                       "bool",   "false"
    default "com.apple.dock", "orientation",                      "string", "bottom"
    default "com.apple.dock", "showDesktopGestureEnabled",        "bool",   "false"
    default "com.apple.dock", "showLaunchpadGestureEnabled",      "bool",   "false"
    default "com.apple.dock", "showMissionControlGestureEnabled", "bool",   "false"
    default "com.apple.dock", "tilesize",                         "float",  "59"
    default "com.apple.dock", "trash-full",                       "bool",   "true"

    default "com.apple.finder", "AppleShowAllFiles"                    "bool",  "true"
    default "com.apple.finder", "AppleShowAllExtensions",              "bool",  "true"
    default "com.apple.finder", "ShowExternalHardDrivesOnDesktop",     "bool",  "true"
    default "com.apple.finder", "ShowHardDrivesOnDesktop",             "bool",  "true"
    default "com.apple.finder", "ShowPreviewPane",                     "bool",  "false"
    default "com.apple.finder", "ShowRecentTags",                      "bool",  "false"
    default "com.apple.finder", "ShowRemovableMediaOnDesktop",         "bool",  "true"
    default "com.apple.finder", "ShowSidebar",                         "bool",  "true"
    default "com.apple.finder", "ShowTabView",                         "bool",  "true"
    default "com.apple.finder", "SidebarDevicesSectionDisclosedState", "bool",  "true"
    default "com.apple.finder", "SidebarPlacesSectionDisclosedState",  "bool",  "true"
    default "com.apple.finder", "SidebarSharedSectionDisclosedState",  "bool",  "true"
    default "com.apple.finder", "SidebarWidth",                        "float", "195"
    default "com.apple.finder", "WarnOnEmptyTrash",                    "bool",  "false"
    default "com.apple.finder", "ProhibitGoToFolder",                  "bool",  "true"
    default "com.apple.finder", "ProhibitConnectTo",                   "bool",  "true"
    default "com.apple.finder", "_FXShowPosixPathInTitle",             "bool",  "true"
    default "com.apple.finder", "DisableAllAnimations",                "bool",  "true"
    # set the default view to the list view
    default "com.apple.finder", "FXPreferredViewStyle",                "string", "Nlsv"

    default "com.apple.screensaver", "askForPassword",      "integer", "1"
    default "com.apple.screensaver", "askForPasswordDelay", "float",   "300"

    default "com.apple.itunes", "disableHomeSharing",             "bool", "true"
    default "com.apple.iTunes", "disableGeniusSidebar",           "bool", "true"
    default "com.apple.itunes", "disableMusicStore",              "bool", "true"
    default "com.apple.itunes", "disableRadio",                   "bool", "true"
    # show itunes songs in the dock
    default "com.apple.dock",   "itunes-notifications",           "bool", "true"
    default "com.apple.dock",   "notification-always-show-image", "bool", "true"

    default "com.apple.DiskUtility", "DUDebugMenuEnabled", "bool", "true"

    default "com.apple.universalaccess", "closeViewHotkeysEnabled",   "bool",    "false"
    default "com.apple.universalaccess", "closeViewZoomFactor",       "float",   "1"
    default "com.apple.universalaccess", "increaseContrast",          "bool",    "false"
    default "com.apple.universalaccess", "login",                     "bool",    "false"
    default "com.apple.universalaccess", "reduceTransparency",        "bool",    "true"
    default "com.apple.universalaccess", "selectedTab",               "integer", "1"
    default "com.apple.universalaccess", "slowKey",                   "bool",    "false"
    default "com.apple.universalaccess", "stickyKey",                 "bool",    "false"
    default "com.apple.universalaccess", "useStickyKeysShortcutKeys", "bool",    "false"

    ask("Have you configured the Terminal?")
    ask("Have you added items to the dock?")
    ask("Have you added spaces keyboard shortcuts?")
    ask("Have you setup the rest of the system preferences?")
  end

  def self.default(domain, name, type, value)
    `defaults write #{domain} #{name} -#{type} #{value}`
  end

end

