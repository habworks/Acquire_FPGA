/* xilffs_config.h - manually created for MicroBlaze standalone use */

#ifndef XILFFS_CONFIG_H_
#define XILFFS_CONFIG_H_

/*
 * Define to 1 if you want to use the built-in cache in the XilFFS layer.
 * 0 = no caching (safe default)
 */
#define XILFFS_USE_CACHE 0

/*
 * Define to 1 if you are using xilffs in a FreeRTOS domain.
 * 0 = standalone / bare metal
 */
#define XILFFS_USE_RTOS 0

/*
 * Define to 1 if you want to enable thread safety for FatFs.
 * (Locks file system calls when using multi-threaded environments)
 */
#define XILFFS_THREAD_SAFE 0

#endif /* XILFFS_CONFIG_H_ */
