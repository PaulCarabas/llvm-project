; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -O0 -verify-machineinstrs -mtriple=x86_64-unknown-unknown --show-mc-encoding -mattr=+avxneconvert | FileCheck %s --check-prefixes=CHECK,X64
; RUN: llc < %s -O0 -verify-machineinstrs -mtriple=i686-unknown-unknown --show-mc-encoding -mattr=+avxneconvert | FileCheck %s --check-prefixes=CHECK,X86

define <4 x float> @test_int_x86_vbcstnebf162ps128(ptr %A) {
; X64-LABEL: test_int_x86_vbcstnebf162ps128:
; X64:       # %bb.0:
; X64-NEXT:    vbcstnebf162ps (%rdi), %xmm0 # encoding: [0xc4,0xe2,0x7a,0xb1,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vbcstnebf162ps128:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vbcstnebf162ps (%eax), %xmm0 # encoding: [0xc4,0xe2,0x7a,0xb1,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <4 x float> @llvm.x86.vbcstnebf162ps128(ptr %A)
  ret <4 x float> %ret
}
declare <4 x float> @llvm.x86.vbcstnebf162ps128(ptr %A)

define <8 x float> @test_int_x86_vbcstnebf162ps256(ptr %A) {
; X64-LABEL: test_int_x86_vbcstnebf162ps256:
; X64:       # %bb.0:
; X64-NEXT:    vbcstnebf162ps (%rdi), %ymm0 # encoding: [0xc4,0xe2,0x7e,0xb1,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vbcstnebf162ps256:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vbcstnebf162ps (%eax), %ymm0 # encoding: [0xc4,0xe2,0x7e,0xb1,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <8 x float> @llvm.x86.vbcstnebf162ps256(ptr %A)
  ret <8 x float> %ret
}
declare <8 x float> @llvm.x86.vbcstnebf162ps256(ptr %A)

define <4 x float> @test_int_x86_vbcstnesh2ps128(ptr %A) {
; X64-LABEL: test_int_x86_vbcstnesh2ps128:
; X64:       # %bb.0:
; X64-NEXT:    vbcstnesh2ps (%rdi), %xmm0 # encoding: [0xc4,0xe2,0x79,0xb1,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vbcstnesh2ps128:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vbcstnesh2ps (%eax), %xmm0 # encoding: [0xc4,0xe2,0x79,0xb1,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <4 x float> @llvm.x86.vbcstnesh2ps128(ptr %A)
  ret <4 x float> %ret
}
declare <4 x float> @llvm.x86.vbcstnesh2ps128(ptr %A)

define <8 x float> @test_int_x86_vbcstnesh2ps256(ptr %A) {
; X64-LABEL: test_int_x86_vbcstnesh2ps256:
; X64:       # %bb.0:
; X64-NEXT:    vbcstnesh2ps (%rdi), %ymm0 # encoding: [0xc4,0xe2,0x7d,0xb1,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vbcstnesh2ps256:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vbcstnesh2ps (%eax), %ymm0 # encoding: [0xc4,0xe2,0x7d,0xb1,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <8 x float> @llvm.x86.vbcstnesh2ps256(ptr %A)
  ret <8 x float> %ret
}
declare <8 x float> @llvm.x86.vbcstnesh2ps256(ptr %A)

define <4 x float> @test_int_x86_vcvtneebf162ps128(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneebf162ps128:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneebf162ps (%rdi), %xmm0 # encoding: [0xc4,0xe2,0x7a,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneebf162ps128:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneebf162ps (%eax), %xmm0 # encoding: [0xc4,0xe2,0x7a,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <4 x float> @llvm.x86.vcvtneebf162ps128(ptr %A)
  ret <4 x float> %ret
}
declare <4 x float> @llvm.x86.vcvtneebf162ps128(ptr %A)

define <8 x float> @test_int_x86_vcvtneebf162ps256(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneebf162ps256:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneebf162ps (%rdi), %ymm0 # encoding: [0xc4,0xe2,0x7e,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneebf162ps256:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneebf162ps (%eax), %ymm0 # encoding: [0xc4,0xe2,0x7e,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <8 x float> @llvm.x86.vcvtneebf162ps256(ptr %A)
  ret <8 x float> %ret
}
declare <8 x float> @llvm.x86.vcvtneebf162ps256(ptr %A)

define <4 x float> @test_int_x86_vcvtneeph2ps128(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneeph2ps128:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneeph2ps (%rdi), %xmm0 # encoding: [0xc4,0xe2,0x79,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneeph2ps128:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneeph2ps (%eax), %xmm0 # encoding: [0xc4,0xe2,0x79,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <4 x float> @llvm.x86.vcvtneeph2ps128(ptr %A)
  ret <4 x float> %ret
}
declare <4 x float> @llvm.x86.vcvtneeph2ps128(ptr %A)

define <8 x float> @test_int_x86_vcvtneeph2ps256(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneeph2ps256:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneeph2ps (%rdi), %ymm0 # encoding: [0xc4,0xe2,0x7d,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneeph2ps256:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneeph2ps (%eax), %ymm0 # encoding: [0xc4,0xe2,0x7d,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <8 x float> @llvm.x86.vcvtneeph2ps256(ptr %A)
  ret <8 x float> %ret
}
declare <8 x float> @llvm.x86.vcvtneeph2ps256(ptr %A)

define <4 x float> @test_int_x86_vcvtneobf162ps128(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneobf162ps128:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneobf162ps (%rdi), %xmm0 # encoding: [0xc4,0xe2,0x7b,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneobf162ps128:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneobf162ps (%eax), %xmm0 # encoding: [0xc4,0xe2,0x7b,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <4 x float> @llvm.x86.vcvtneobf162ps128(ptr %A)
  ret <4 x float> %ret
}
declare <4 x float> @llvm.x86.vcvtneobf162ps128(ptr %A)

define <8 x float> @test_int_x86_vcvtneobf162ps256(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneobf162ps256:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneobf162ps (%rdi), %ymm0 # encoding: [0xc4,0xe2,0x7f,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneobf162ps256:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneobf162ps (%eax), %ymm0 # encoding: [0xc4,0xe2,0x7f,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <8 x float> @llvm.x86.vcvtneobf162ps256(ptr %A)
  ret <8 x float> %ret
}
declare <8 x float> @llvm.x86.vcvtneobf162ps256(ptr %A)

define <4 x float> @test_int_x86_vcvtneoph2ps128(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneoph2ps128:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneoph2ps (%rdi), %xmm0 # encoding: [0xc4,0xe2,0x78,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneoph2ps128:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneoph2ps (%eax), %xmm0 # encoding: [0xc4,0xe2,0x78,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <4 x float> @llvm.x86.vcvtneoph2ps128(ptr %A)
  ret <4 x float> %ret
}
declare <4 x float> @llvm.x86.vcvtneoph2ps128(ptr %A)

define <8 x float> @test_int_x86_vcvtneoph2ps256(ptr %A) {
; X64-LABEL: test_int_x86_vcvtneoph2ps256:
; X64:       # %bb.0:
; X64-NEXT:    vcvtneoph2ps (%rdi), %ymm0 # encoding: [0xc4,0xe2,0x7c,0xb0,0x07]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: test_int_x86_vcvtneoph2ps256:
; X86:       # %bb.0:
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax # encoding: [0x8b,0x44,0x24,0x04]
; X86-NEXT:    vcvtneoph2ps (%eax), %ymm0 # encoding: [0xc4,0xe2,0x7c,0xb0,0x00]
; X86-NEXT:    retl # encoding: [0xc3]
  %ret = call <8 x float> @llvm.x86.vcvtneoph2ps256(ptr %A)
  ret <8 x float> %ret
}
declare <8 x float> @llvm.x86.vcvtneoph2ps256(ptr %A)

define <8 x bfloat> @test_int_x86_vcvtneps2bf16128(<4 x float> %A) {
; CHECK-LABEL: test_int_x86_vcvtneps2bf16128:
; CHECK:       # %bb.0:
; CHECK-NEXT:    {vex} vcvtneps2bf16 %xmm0, %xmm0 # encoding: [0xc4,0xe2,0x7a,0x72,0xc0]
; CHECK-NEXT:    ret{{[l|q]}} # encoding: [0xc3]
  %ret = call <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %A)
  ret <8 x bfloat> %ret
}
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %A)

define <8 x bfloat> @test_int_x86_vcvtneps2bf16256(<8 x float> %A) {
; CHECK-LABEL: test_int_x86_vcvtneps2bf16256:
; CHECK:       # %bb.0:
; CHECK-NEXT:    {vex} vcvtneps2bf16 %ymm0, %xmm0 # encoding: [0xc4,0xe2,0x7e,0x72,0xc0]
; CHECK-NEXT:    vzeroupper # encoding: [0xc5,0xf8,0x77]
; CHECK-NEXT:    ret{{[l|q]}} # encoding: [0xc3]
  %ret = call <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %A)
  ret <8 x bfloat> %ret
}
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %A)

define <8 x bfloat> @select(i8 %x, <8 x bfloat> %y) nounwind {
; X64-LABEL: select:
; X64:       # %bb.0:
; X64-NEXT:    vmovaps %xmm0, %xmm1 # encoding: [0xc5,0xf8,0x28,0xc8]
; X64-NEXT:    movb %dil, %al # encoding: [0x40,0x88,0xf8]
; X64-NEXT:    movb %al, -{{[0-9]+}}(%rsp) # encoding: [0x88,0x44,0x24,0xff]
; X64-NEXT:    movzbl -{{[0-9]+}}(%rsp), %eax # encoding: [0x0f,0xb6,0x44,0x24,0xff]
; X64-NEXT:    movl %eax, %ecx # encoding: [0x89,0xc1]
; X64-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X64-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X64-NEXT:    vmovd %ecx, %xmm0 # encoding: [0xc5,0xf9,0x6e,0xc1]
; X64-NEXT:    # kill: def $al killed $al killed $eax
; X64-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X64-NEXT:    shrb %cl # encoding: [0xd0,0xe9]
; X64-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X64-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X64-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X64-NEXT:    vpinsrw $1, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x01]
; X64-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X64-NEXT:    shrb $2, %cl # encoding: [0xc0,0xe9,0x02]
; X64-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X64-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X64-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X64-NEXT:    vpinsrw $2, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x02]
; X64-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X64-NEXT:    shrb $3, %cl # encoding: [0xc0,0xe9,0x03]
; X64-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X64-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X64-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X64-NEXT:    vpinsrw $3, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x03]
; X64-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X64-NEXT:    shrb $4, %cl # encoding: [0xc0,0xe9,0x04]
; X64-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X64-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X64-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X64-NEXT:    vpinsrw $4, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x04]
; X64-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X64-NEXT:    shrb $5, %cl # encoding: [0xc0,0xe9,0x05]
; X64-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X64-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X64-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X64-NEXT:    vpinsrw $5, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x05]
; X64-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X64-NEXT:    shrb $6, %cl # encoding: [0xc0,0xe9,0x06]
; X64-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X64-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X64-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X64-NEXT:    vpinsrw $6, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x06]
; X64-NEXT:    shrb $7, %al # encoding: [0xc0,0xe8,0x07]
; X64-NEXT:    movzbl %al, %eax # encoding: [0x0f,0xb6,0xc0]
; X64-NEXT:    negl %eax # encoding: [0xf7,0xd8]
; X64-NEXT:    vpinsrw $7, %eax, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc0,0x07]
; X64-NEXT:    vpandn %xmm1, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xdf,0xc1]
; X64-NEXT:    retq # encoding: [0xc3]
;
; X86-LABEL: select:
; X86:       # %bb.0:
; X86-NEXT:    pushl %eax # encoding: [0x50]
; X86-NEXT:    vmovaps %xmm0, %xmm1 # encoding: [0xc5,0xf8,0x28,0xc8]
; X86-NEXT:    movb {{[0-9]+}}(%esp), %al # encoding: [0x8a,0x44,0x24,0x08]
; X86-NEXT:    movb %al, {{[0-9]+}}(%esp) # encoding: [0x88,0x44,0x24,0x03]
; X86-NEXT:    movzbl {{[0-9]+}}(%esp), %eax # encoding: [0x0f,0xb6,0x44,0x24,0x03]
; X86-NEXT:    movl %eax, %ecx # encoding: [0x89,0xc1]
; X86-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X86-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X86-NEXT:    vmovd %ecx, %xmm0 # encoding: [0xc5,0xf9,0x6e,0xc1]
; X86-NEXT:    # kill: def $al killed $al killed $eax
; X86-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X86-NEXT:    shrb %cl # encoding: [0xd0,0xe9]
; X86-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X86-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X86-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X86-NEXT:    vpinsrw $1, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x01]
; X86-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X86-NEXT:    shrb $2, %cl # encoding: [0xc0,0xe9,0x02]
; X86-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X86-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X86-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X86-NEXT:    vpinsrw $2, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x02]
; X86-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X86-NEXT:    shrb $3, %cl # encoding: [0xc0,0xe9,0x03]
; X86-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X86-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X86-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X86-NEXT:    vpinsrw $3, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x03]
; X86-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X86-NEXT:    shrb $4, %cl # encoding: [0xc0,0xe9,0x04]
; X86-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X86-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X86-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X86-NEXT:    vpinsrw $4, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x04]
; X86-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X86-NEXT:    shrb $5, %cl # encoding: [0xc0,0xe9,0x05]
; X86-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X86-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X86-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X86-NEXT:    vpinsrw $5, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x05]
; X86-NEXT:    movb %al, %cl # encoding: [0x88,0xc1]
; X86-NEXT:    shrb $6, %cl # encoding: [0xc0,0xe9,0x06]
; X86-NEXT:    movzbl %cl, %ecx # encoding: [0x0f,0xb6,0xc9]
; X86-NEXT:    andl $1, %ecx # encoding: [0x83,0xe1,0x01]
; X86-NEXT:    negl %ecx # encoding: [0xf7,0xd9]
; X86-NEXT:    vpinsrw $6, %ecx, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc1,0x06]
; X86-NEXT:    shrb $7, %al # encoding: [0xc0,0xe8,0x07]
; X86-NEXT:    movzbl %al, %eax # encoding: [0x0f,0xb6,0xc0]
; X86-NEXT:    negl %eax # encoding: [0xf7,0xd8]
; X86-NEXT:    vpinsrw $7, %eax, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xc4,0xc0,0x07]
; X86-NEXT:    vpandn %xmm1, %xmm0, %xmm0 # encoding: [0xc5,0xf9,0xdf,0xc1]
; X86-NEXT:    popl %eax # encoding: [0x58]
; X86-NEXT:    retl # encoding: [0xc3]
  %1 = bitcast i8 %x to <8 x i1>
  %2 = select <8 x i1> %1, <8 x bfloat> zeroinitializer, <8 x bfloat> %y
  ret <8 x bfloat> %2
}
