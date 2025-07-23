# Zephyr Boards

This repository provides minimal support for GD32E230 microcontroller and development boards for the Zephyr RTOS.

## Supported Hardware

### Boards
- **GD32E230-EVAL**: GigaDevice GD32E230 evaluation board

### SoCs
- **GD32E23x**: GigaDevice GD32E230 series ARM Cortex-M23 microcontrollers

## Getting Started

Before getting started, make sure you have a proper Zephyr development
environment. Follow the official
[Zephyr Getting Started Guide](https://docs.zephyrproject.org/latest/getting_started/index.html).

### Initialization

The first step is to initialize the workspace folder (``my-workspace``) where
the ``zephyr-boards`` and all Zephyr modules will be cloned. Run the following
command:

```shell
# initialize my-workspace for the GD32E230 support branch
west init -m https://github.com/htynkn/zephyr-boards.git --mr main my-workspace
# update Zephyr modules
cd my-workspace
west update
west packages pip --install
west sdk install -t arm-zephyr-eabi
```

### Building and Running

To build the sample application, run the following command:

```shell
cd zephyr-boards
west build -b gd32e230_eval samples/app
```

For other Zephyr sample applications, you can use:

```shell
west build -b gd32e230_eval samples/basic/blinky
```

Once you have built the application, run the following command to flash it:

```shell
west flash
```

### Hardware Abstraction Layer (HAL)

This repository includes the GD32E23x Firmware Library in the `hal/gd/GD32E23x_Firmware_Library/` directory, providing:

- CMSIS headers and startup files
- Standard peripheral drivers for all GD32E23x peripherals
- Template projects for Keil and IAR development environments

## Project Structure

```
├── boards/gd/gd32e230_eval/     # Board definition files
├── soc/gd/gd32/gd32e23x/        # SoC definition and configuration
├── hal/gd/GD32E23x_Firmware_Library/  # GD32E23x HAL library
├── samples/app/                 # Simple sample application
└── west.yml                     # West manifest (Zephyr v4.2.0)
```

## Features

- Minimal GD32E230 SoC support for Zephyr RTOS
- Board configuration for GD32E230-EVAL development board
- Integration with Zephyr v4.2.0
- J-Link debugging support
- ARM Cortex-M23 architecture support