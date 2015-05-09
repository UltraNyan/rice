# Conky configs

When running conky with awesome, you may want to disable borders for conky in your rc lua:
```

    { rule = { class = "conky" },
          properties = { floating = true,  border_width = 0 } },

```

... also when creating your own configs add ```own_window_type override``` to your conky config to make sure it plays nice when you are tiling your windows.

##Weeb conky daily kanji
Includes a shell script that downloads data from a rss site and displays it to your desktop.

Make sure that the script paths are correct and your network interface is set correctly in the conky config.
