# Zephyr Boards

## Getting Started

Before getting started, make sure you have a proper Zephyr development
environment. Follow the official
[Zephyr Getting Started Guide](https://docs.zephyrproject.org/latest/getting_started/index.html).

### Initialization

The first step is to initialize the workspace folder (``my-workspace``) where
the ``zephyr-boards`` and all Zephyr modules will be cloned. Run the following
command:

```shell
# initialize my-workspace for the example-application (main branch)
west init -m https://github.com/htynkn/zephyr-boards.git --mr main my-workspace
# update Zephyr modules
cd my-workspace
west update
west packages pip --install
west sdk install -t arm-zephyr-eabi
```

### Building and running

To build the application, run the following command:

```shell
cd zephyr-boards
west build -b $BOARD app
```

where `$BOARD` is the target board.

    36
    37 ## Support for gd32e230 Board
    38
    39 This repository now supports the gd32e230 board. To build and run a sample
    40 application for this board, follow these steps:
    41
    42 ### Building and Running for gd32e230
    43
    44 1. Build the application for the gd32e230 board:
    45
    46     ```shell
    47     cd zephyr-boards
    48     west build -b gd32e230 app
    49     ```
    50
    51 2. Flash the application to the gd32e230 board:
    52
    53     ```shell
    54     west flash
    55     ```
    56
    57 3. Alternatively, you can run a sample application from the Zephyr samples:
    58
    59     ```shell
    60     cd zephyr-boards
    61     west build -b gd32e230 zephyr/samples/hello_world
    62     west flash
    63     ```
    64

A sample debug configuration is also provided. To apply it, run the following
command:

```shell
west build -b $BOARD app -- -DEXTRA_CONF_FILE=debug.conf
```

Once you have built the application, run the following command to flash it:

```shell
west flash
```


