.section .data, "a"

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80000400       /* Entrypoint address */
.word 0x00001449       /* Revision */
.word 0x944FAFC4       /* Checksum 1 */
.word 0xB288266A       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "SUPERMAN            " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x0000004E       /* Cartridge */
.ascii "SP"            /* Cartridge ID */
.ascii "E"             /* Country code */
.byte 0x00             /* Version */
