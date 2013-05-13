#
#	LPC11xx Platform objects
#
MACH_LPC11xx_OBJECTS += $(BUILD_DIR)arch/arm/mach/lpc11xx/lpc11xx.o			# Provides machine description.
MACH_LPC11xx_OBJECTS += $(BUILD_DIR)arch/arm/mach/lpc11xx/ioconfig.o
MACH_LPC11xx_OBJECTS += $(BUILD_DIR)arch/arm/mach/lpc11xx/rcc.o
MACH_LPC11xx_OBJECTS-$(BT_CONFIG_MACH_LPC11Cxx) 	 += $(BUILD_DIR)arch/arm/mach/lpc11xx/gpio_c.o
MACH_LPC11xx_OBJECTS-$(BT_CONFIG_MACH_LPC11Axx) 	 += $(BUILD_DIR)arch/arm/mach/lpc11xx/gpio_a.o
MACH_LPC11xx_OBJECTS-$(BT_CONFIG_MACH_LPC11xx_TIMER) += $(BUILD_DIR)arch/arm/mach/lpc11xx/timer.o
MACH_LPC11xx_OBJECTS-$(BT_CONFIG_MACH_LPC11xx_UART)  += $(BUILD_DIR)arch/arm/mach/lpc11xx/uart.o
MACH_LPC11xx_OBJECTS-$(BT_CONFIG_MACH_LPC11xx_CAN)   += $(BUILD_DIR)arch/arm/mach/lpc11xx/can.o
MACH_LPC11xx_OBJECTS-$(BT_CONFIG_MACH_LPC11xx_I2C)   += $(BUILD_DIR)arch/arm/mach/lpc11xx/i2c.o

MACH_LPC11xx_OBJECTS += $(MACH_LPC11xx_OBJECTS-y)

$(MACH_LPC11xx_OBJECTS): MODULE_NAME="HAL"
$(MACH_LPC11xx_OBJECTS): CFLAGS += -D BT_CONFIG_MACH_LPC11xx_SYSCLOCK_FREQ=$(BT_CONFIG_MACH_LPC11xx_SYSCLOCK_FREQ)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -D BT_CONFIG_MACH_LPC11xx_SYSCLOCK_IRC_FREQ=$(BT_CONFIG_MACH_LPC11xx_SYSCLOCK_IRC_FREQ)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_ARCH_ARM_NVIC_BASE=$(BT_CONFIG_ARCH_ARM_NVIC_BASE)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_ARCH_ARM_NVIC_TOTAL_IRQS=$(BT_CONFIG_ARCH_ARM_NVIC_TOTAL_IRQS)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_TOTAL_GPIOS=$(BT_CONFIG_MACH_LPC11xx_TOTAL_GPIOS)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_GPIO_BASE=$(BT_CONFIG_MACH_LPC11xx_GPIO_BASE)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_CAN0_BASE=$(BT_CONFIG_MACH_LPC11xx_CAN0_BASE)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_UART0_BASE=$(BT_CONFIG_MACH_LPC11xx_UART0_BASE)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_UART0_RX=$(BT_CONFIG_MACH_LPC11xx_UART0_RX)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_UART0_TX=$(BT_CONFIG_MACH_LPC11xx_UART0_TX)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_TIMER0_BASE=$(BT_CONFIG_MACH_LPC11xx_TIMER0_BASE)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_TIMER1_BASE=$(BT_CONFIG_MACH_LPC11xx_TIMER1_BASE)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_TIMER2_BASE=$(BT_CONFIG_MACH_LPC11xx_TIMER2_BASE)
$(MACH_LPC11xx_OBJECTS): CFLAGS += -DBT_CONFIG_MACH_LPC11xx_TIMER3_BASE=$(BT_CONFIG_MACH_LPC11xx_TIMER3_BASE)



OBJECTS += $(MACH_LPC11xx_OBJECTS)
