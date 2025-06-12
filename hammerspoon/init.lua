hs.hotkey.bind({"cmd"}, "return", function()
    hs.task.new("/usr/bin/open", function() end, {"-n", "-a", "Ghostty"}):start()
end)

hs.hotkey.bind({"cmd"}, "b", function()
    hs.application.launchOrFocus("zen")
    -- Small delay to ensure the app is active
    hs.timer.doAfter(0.1, function()
        hs.application.get("zen"):selectMenuItem({"File", "New Window"})
    end)
end)


