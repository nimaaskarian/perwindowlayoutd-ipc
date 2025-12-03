# perwindowlayoutd-ipc
just an attempt to make an ipc for perwindowlayoutd, to switch window layout of
windows programmatically.

makes a fifo in `/tmp/perwindowlayoutd-ipc.fifo`, reads `<hex window_id> <layout index>`.
