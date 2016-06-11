
#ifndef SDMMC_BLOCK_SD_H
#define SDMMC_BLOCK_SD_H

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/

#include <string.h>
#include "sdmmc_block.h"

#ifdef SDMMC_BLOCK_SD

/***********************************************************************************************************************
 * LOCAL DATA
 **********************************************************************************************************************/

const XMC_SDMMC_COMMAND_t SDMMC_BLOCK_COMMAND[40];
const uint8_t SDMMC_BLOCK_SD_HASH_TABLE[65];

/***********************************************************************************************************************
 * MACROS
 **********************************************************************************************************************/

/**
 * @brief This structure stores the command register fields.
 */
#define SDMMC_BLOCK_COMMON_COMMAND(c) SDMMC_BLOCK_COMMAND[SDMMC_BLOCK_SD_HASH_TABLE[c]]
#define SDMMC_BLOCK_SD_COMMAND(c)     SDMMC_BLOCK_COMMON_COMMAND(c)

#define SDMMC003_NORMAL_INT_STATUS_BITS       (0x7fffU)
#define SDMMC_BLOCK_ERROR_CMD_STATUS_BITMASK  (0x000FU) /* Command line Int errors status bit-mask */
#define SDMMC_BLOCK_ERROR_DATA_STATUS_BITMASK (0x0070U) /* Data line Error status bitmask */
#define SDMMC_BLOCK_TX_BLOCK_SIZE_VALUE       (0x0200U) /* Transfer block register */
#define SDMMC_BLOCK_HC_RESPONSE1_BITPOS       (0x10U)   /* Response register */
#define SDMMC_BLOCK_SWITCH_FUNC_GRP1_STATUS_BITMASK (0x0000000FU) /* Switch speed function bit-mask */
#define SDMMC_BLOCK_SWITCH_FUNC_GRP1_STATUS_BITPOS  (0x0U) /* Switch speed function bit-position */

/*
 * Append by 3 zeros since the SYSTIMER APP takes
 * time in microseconds
 */
#define SDMMC_BLOCK_CARD_POWER_DELAY       (20000U)   /* Card power delay */
#define SDMMC_BLOCK_DELAY_IN_TRANSFER      (1000000U) /* Transfer delay */
#define SDMMC_BLOCK_RESET_IN_DATA_TRANSFER (1000000U) /* Reset in data transfer */
#define SDMMC_BLOCK_DELAY_IN_COMMAND       (1000000U) /* Command delay */
#define SDMMC_BLOCK_RESET_DELAY            (500000U)  /* Reset delay */
#define SDMMC_BLOCK_CLOCK_STABLE_DELAY     (1000000U) /* Clock stable delay */

#define SDMMC_BLOCK_NUM_CARD_RESET_RETRIES (2U)   /* Number of reset retries at card init */
#define SDMMC_BLOCK_BLOCK_SIZE             (512U) /* Block Size in bytes */
#define SDMMC_BLOCK_NUM_QUADLETS_IN_BLOCK  (SDMMC_BLOCK_BLOCK_SIZE >> 2) /* Block size in quad bytes */

/* Command index  */
#define SDMMC_BLOCK_GO_IDLE_STATE          0x00 /* CMD0 */
#define SDMMC_BLOCK_MMC_SEND_OP_COND       0x01 /* MMC CMD1 */
#define SDMMC_BLOCK_ALL_SEND_CID           0x02 /* CMD2 */
#define SDMMC_BLOCK_SEND_RELATIVE_ADDR     0x03 /* CMD3 */
#define SDMMC_BLOCK_SET_DSR                0x04 /* CMD4 */
#define SDMMC_BLOCK_MMC_SLEEP_AWAKE        0x05 /* MMC CMD5  */
#define SDMMC_BLOCK_SWITCH_FUNC            0x06 /* CMD6 */
#define SDMMC_BLOCK_SELECT_DESELECT_CARD   0x07 /* CMD7 */
#define SDMMC_BLOCK_SD_SEND_IF_COND        0x08 /* SD CMD8 */
#define SDMMC_BLOCK_MMC_SEND_EXT_CSD       0x08 /* MMC CMD8 */
#define SDMMC_BLOCK_SEND_CSD               0x09 /* CMD9 */
#define SDMMC_BLOCK_SEND_CID               0x0A /* CMD10 */
#define SDMMC_BLOCK_STOP_TRANSMISSION      0x0C /* CMD12 */
#define SDMMC_BLOCK_SEND_STATUS            0x0D /* CMD13 */
#define SDMMC_BLOCK_GO_INACTIVE_STATE      0x0F /* CMD15 */
#define SDMMC_BLOCK_SET_BLOCKLEN           0x10 /* CMD16 */
#define SDMMC_BLOCK_READ_SINGLE_BLOCK      0x11 /* CMD17 */
#define SDMMC_BLOCK_READ_MULTIPLE_BLOCK    0x12 /* CMD18 */
#define SDMMC_BLOCK_WRITE_BLOCK            0x18 /* CMD24 */
#define SDMMC_BLOCK_WRITE_MULTIPLE_BLOCK   0x19 /* CMD25 */
#define SDMMC_BLOCK_PROGRAM_CSD            0x1B /* CMD27 */
#define SDMMC_BLOCK_SET_WRITE_PROT         0x1C /* CMD28 */
#define SDMMC_BLOCK_CLR_WRITE_PROT         0x1D /* CMD29 */
#define SDMMC_BLOCK_SEND_WRITE_PROT        0x1E /* CMD30 */
#define SDMMC_BLOCK_ERASE_WR_BLK_START     0x20 /* CMD32 */
#define SDMMC_BLOCK_ERASE_WR_BLK_END       0x21 /* CMD33 */
#define SDMMC_BLOCK_ERASE_GROUP_START      0x23 /* CMD35 */
#define SDMMC_BLOCK_ERASE_GROUP_END        0x24 /* CMD36 */
#define SDMMC_BLOCK_ERASE                  0x26 /* CMD38 */
#define SDMMC_BLOCK_LOCK_UNLOCK            0x2A /* CMD42 */
#define SDMMC_BLOCK_APP_CMD                0x37 /* CMD55 */
#define SDMMC_BLOCK_GEN_CMD                0x38 /* CMD56 */
#define SDMMC_BLOCK_SET_BUS_WIDTH          0x06 /* ACMD6 */
#define SDMMC_BLOCK_SD_STATUS              0x0D /* ACMD13 */
#define SDMMC_BLOCK_SEND_NUM_WR_BLOCKS     0x16 /* ACMD22 */
#define SDMMC_BLOCK_SET_WR_BLK_ERASE_COUNT 0x17 /* ACMD23 */
#define SDMMC_BLOCK_SD_SEND_OP_COND        0x29 /* ACMD41 */
#define SDMMC_BLOCK_SET_CLR_CARD_DETECT    0x2A /* ACMD42 */
#define SDMMC_BLOCK_SEND_SCR               0x33 /* ACMD51 */

/* Start of Card Status Register i.e CSR Error Bits bitmask */
#define SDMMC_BLOCK_SD_CSR_OUT_OF_RANGE_BITMASK       (0x80000000U)
#define SDMMC_BLOCK_SD_CSR_ADDRESS_ERROR_BITMASK      (0x40000000U)
#define SDMMC_BLOCK_SD_CSR_BLOCK_LEN_ERROR_BITMASK    (0x20000000U)
#define SDMMC_BLOCK_SD_CSR_ERASE_SEQ_ERROR_BITMASK    (0x10000000U)
#define SDMMC_BLOCK_SD_CSR_ERASE_PARAM_BITMASK        (0x08000000U)
#define SDMMC_BLOCK_SD_CSR_WP_VIOLATION_BITMASK       (0x04000000U)
#define SDMMC_BLOCK_SD_CSR_LOCK_UNLOCK_FAILED_BITMASK (0x01000000U)
#define SDMMC_BLOCK_SD_CSR_COM_CRC_ERROR_BITMASK      (0x00800000U)
#define SDMMC_BLOCK_SD_CSR_ILLEGAL_COMMAND_BITMASK    (0x00400000U)
#define SDMMC_BLOCK_SD_CSR_CARD_ECC_FAILED_BITMASK    (0x00200000U)
#define SDMMC_BLOCK_SD_CSR_CC_ERROR_BITMASK           (0x00100000U)
#define SDMMC_BLOCK_SD_CSR_ERROR_BITMASK              (0x00080000U)
#define SDMMC_BLOCK_SD_CSR_CSD_OVERWRITE_BITMASK      (0x00010000U)
#define SDMMC_BLOCK_SD_CSR_WP_ERASE_SKIP_BITMASK      (0x00008000U)
#define SDMMC_BLOCK_SD_SWITCH_ERROR_BITMASK           (0x00000080U)
#define SDMMC_BLOCK_SD_CSR_ASK_SEQ_ERROR_BITMASK      (0x00000008U)
#define SDMMC_BLOCK_SD_CSR_CARD_IS_LOCKED_BITMASK     (0x02000000U)
#define SDMMC_BLOCK_SD_CSR_CURRENT_STATE_BITMASK      (0x00001D00U)
#define SDMMC_BLOCK_SD_CSR_CURRENT_STATE_BITPOS       (0x00000009U)
#define SDMMC_BLOCK_SD_CSR_CURRENT_STATE_TRANS_VALUE  (0x00000004U)
#define SDMMC_BLOCK_SD_CSR_CARD_IS_LOCKED_BITMASK     (0x02000000U)

/***********************************************************************************************************************
 * ENUMS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * DATA STRUCTURES
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * API PROTOTYPES
 **********************************************************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_HostControllerInit(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_HostControllerDeInit(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetSdStatus(SDMMC_BLOCK_t *const obj, void *buf);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_CheckSectorBound(SDMMC_BLOCK_t *const obj, uint32_t sector_num, uint32_t sector_count);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_LocalErase(SDMMC_BLOCK_t *const obj, uint32_t start_addr, uint32_t end_addr, uint32_t timeout);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_EraseBlock(SDMMC_BLOCK_t *const obj, uint32_t start_addr, uint32_t end_addr);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_LockUnlockCard(SDMMC_BLOCK_t *const obj,
                              SDMMC_BLOCK_LOCK_STRUCTURE_t *lock,
                              SDMMC_BLOCK_CARD_LOCK_MODE_t mode);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetLockStatus(SDMMC_BLOCK_t *const obj, SDMMC_BLOCK_MODE_STATUS_t *lock_stat);

SDMMC_BLOCK_CARD_STATE_t
SDMMC_BLOCK_SD_GetState(SDMMC_BLOCK_t *const obj);

__INLINE SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetCardType(SDMMC_BLOCK_t *const obj, uint32_t *card_type);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetCid(SDMMC_BLOCK_t *const obj, void *buf);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetOcr(SDMMC_BLOCK_t *const obj, void *buf);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetCsd(SDMMC_BLOCK_t *const obj, void *buf);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetSectorCount(SDMMC_BLOCK_t *const obj, void *buf);

__INLINE SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetSectorSize(SDMMC_BLOCK_t *const obj, void *buf);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_GetBlockSize(SDMMC_BLOCK_t *const obj, void *buf);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_FlushDiskWriteCache(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_CardReadMultipleBlocks(SDMMC_BLOCK_t *const obj,
                                      uint32_t *read_buf,
                                      uint32_t read_addr,
                                      uint32_t num_blocks);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_CardWriteMultipleBlocks(SDMMC_BLOCK_t *const obj,
                                       const uint32_t *write_buf,
                                       uint32_t write_addr,
                                       uint32_t num_blocks);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_CardReadSingleBlock(SDMMC_BLOCK_t *const obj,
                                   uint32_t *read_buf,
                                   uint32_t read_addr);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_CardWriteSingleBlock(SDMMC_BLOCK_t *const obj,
                                    const uint32_t *write_buf,
                                    uint32_t write_addr);

SDMMC_BLOCK_STATUS_t
SDMMC_BLOCK_SD_ReadBlock(SDMMC_BLOCK_t *const obj,
                         uint8_t *read_buf,
                         uint32_t sector_num,
                         uint8_t sector_count);

SDMMC_BLOCK_STATUS_t
SDMMC_BLOCK_SD_WriteBlock(SDMMC_BLOCK_t *const obj,
                          const uint8_t *write_buf,
                          uint32_t sector_num,
                          uint8_t sector_count);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_EjectCard(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_Start(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_CardIdentificationProcess(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_Init(SDMMC_BLOCK_t *const j);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_ErrorInterruptRecovery(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_MultiBlockTransfer(SDMMC_BLOCK_t *const obj,
                                  uint32_t *addr,
                                  uint32_t num_blocks,
                                  const XMC_SDMMC_COMMAND_t *cmd,
                                  uint32_t *buf,
                                  SDMMC_BLOCK_SD_DATA_TRANSFER_t transfer_mode);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_SingleBlockTransfer(SDMMC_BLOCK_t *const obj,
                                   const XMC_SDMMC_COMMAND_t *cmd,
                                   uint32_t arg,
                                   uint16_t block_size,
                                   uint32_t *buf,
                                   SDMMC_BLOCK_SD_DATA_TRANSFER_t transfer_mode);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_SwitchToTransferState(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_CheckLockStatus(SDMMC_BLOCK_t *const obj,
                               SDMMC_BLOCK_CARD_LOCK_MODE_t mode);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_SwitchBusWidth(SDMMC_BLOCK_t *const obj);

SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_SwitchSpeed(SDMMC_BLOCK_t *const obj);

void SDMMC_BLOCK_SD_ACMDErrorRecovery(SDMMC_BLOCK_t *const obj);

#ifdef SDMMC_BLOCK_SD_CARD_DETECTION_SUPPORT
SDMMC_BLOCK_MODE_STATUS_t
SDMMC_BLOCK_SD_RegisterCallBack(SDMMC_BLOCK_t *const obj, void (*cb)(SDMMC_BLOCK_SD_INTERRUPT_t));
#endif

#ifdef __cplusplus
}
#endif

#endif /* #ifdef SDMMC_BLOCK_SD */

#endif /* SDMMC_BLOCK_SD_H */

