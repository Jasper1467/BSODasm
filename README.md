# BSOD Force

This repository contains assembly code files for x64 and x86 architectures that can be used to force a Blue Screen of Death (BSOD) on compatible systems. 

**Note: Causing intentional BSOD can have serious consequences and should only be done in controlled environments for testing or debugging purposes.**

## x64 Assembly (Intel/AMD)

- `bsod_x64.asm`: This file contains x64 assembly code to force a BSOD on Intel or AMD processors. It uses the `ud2` (undefined instruction) opcode to generate an exception.

## x86 Assembly (Intel/AMD)

- `bsod_x86.asm`: This file contains x86 assembly code to force a BSOD on Intel or AMD processors. It uses the `int 0x2e` instruction to trigger an undefined interrupt and generate an exception.

## Usage

1. Assemble the assembly code files using a suitable assembler, such as NASM or MASM, depending on your platform.

2. Link the assembled object file to create an executable.

3. Run the executable on a compatible system to force a BSOD.