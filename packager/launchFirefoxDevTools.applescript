#!/usr/bin/env osascript

-- Copyright (c) 2015-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.

on run argv
  set theURL to item 1 of argv

  activate application "FirefoxDeveloperEdition"

  delay 0.2
  -- TODO: find active app
  tell application "System Events"
      tell process "FirefoxDeveloperEdition"
          keystroke "t" using {command down} # open new tab
          keystroke "l" using {command down} # select url bar
          keystroke theURL # paste the url
          keystroke return
      end tell
  end tell
end run

