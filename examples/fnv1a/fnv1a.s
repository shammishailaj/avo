// Code generated by command: go run asm.go -out fnv1a.s -stubs stub.go. DO NOT EDIT.

#include "textflag.h"

// func Hash64(data []byte) uint64
TEXT ·Hash64(SB), NOSPLIT, $0-32
	MOVQ	data_base(FP), CX
	MOVQ	data_len+8(FP), BX
	MOVQ	$0xcbf29ce484222325, AX
	MOVQ	$0x00000100000001b3, BP
loop:
	CMPQ	BX, $0x00
	JE	done
	MOVBQZX	(CX), DX
	XORQ	DX, AX
	MULQ	BP
	INCQ	CX
	DECQ	BX
	JMP	loop
done:
	MOVQ	AX, ret+24(FP)
	RET
