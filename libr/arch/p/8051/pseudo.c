/* radare - LGPL - Copyright 2025 - pancake */

#include <r_asm.h>

RAsmPlugin r_asm_plugin_8051= {
	.meta = {
		.name = "8051",
		.desc = "8051 pseudo syntax",
		.author = "pancake",
		.license = "LGPL-3.0-only",
	}
};

#ifndef R2_PLUGIN_INCORE
R_API RLibStruct radare_plugin = {
	.type = R_LIB_TYPE_ASM,
	.data = &r_asm_plugin_8051,
	.version = R2_VERSION
};
#endif
