// Validate eLua configuration options
// Should be included in main.c, as this is the first file that's compiled, so
// any configuration errors are caught right at the beginning of the build
// process

#ifndef __VALIDATE_H__
#define __VALIDATE_H__

#include "platform_conf.h"

// The maximum 32 GPIO ports limitation is given by the port_mask variable in src/modules/pio.c
#if NUM_PIO > 32
#error "Can't have more than 32 GPIO ports"
#endif

// Can't define more than one console devices
#if defined( BUILD_CON_TCP ) && defined( BUILD_CON_GENERIC )
#error "Can't have two console devices (don't enable BUILD_CON_TCP and BUILD_CON_GENERIC in platform_conf.h at the same time)"
#endif // #if defined( BUILD_CON_TCP ) && defined( BUILD_CON_GENERIC )

// For linenoise we need term
#ifdef BUILD_LINENOISE
  #ifndef BUILD_TERM
  #error "linenoise needs term support, define BUILD_TERM"
  #endif // #ifndef BUILD_TERM
#endif // #ifdef BUILD_LINENOISE

// For BUF_ENABLE_UART we also need C interrupt handlers support and specific INT_UART_RX support
#if defined( BUF_ENABLE_UART ) 
  #if !defined( BUILD_C_INT_HANDLERS )
  #error "Buffering support on UART neeeds C interrupt handlers support, define BUILD_C_INT_HANDLERS in your platform_conf.h"
  #endif
  #if !defined( INT_UART_RX )
  #error "Buffering support on UART needs support for the INT_UART_RX interrupt"
  #endif
#endif

#if defined( BUILD_MMCFS ) && !defined( PLATFORM_HAS_SYSTIMER )
  #error "BUILD_MMCFS needs system timer support. Ensure your platform has this implemented and PLATFORM_HAS_SYSTIMER is defined"
#endif

// CON_BUF_SIZE needs BUF_ENABLE_UART and CON_UART_ID
#if defined( CON_BUF_SIZE )
  #if !defined( BUF_ENABLE_UART )
  #error "Console buffering needs BUF_ENABLE_UART"
  #endif
  #if !defined( CON_UART_ID )
  #error "Console buffering needs CON_UART_ID defined to the UART ID of the console device"
  #endif
#endif

// BUILD_ADVANCED_SHELL needs BUILD_SHELL
#if defined( BUILD_ADVANCED_SHELL ) && !defined( BUILD_SHELL )
  #error "BUILD_ADVANCED_SHELL needs BUILD_SHELL"
#endif
  
#endif // #ifndef __VALIDATE_H__

