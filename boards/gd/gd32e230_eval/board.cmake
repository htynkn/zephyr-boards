board_runner_args(jlink "--device=GD32E230C8T6" "--iface=SWD" "--speed=4000")
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)