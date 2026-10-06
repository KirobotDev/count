# Assembly Counter

Petit projet en **x86-64 Assembly** avec NASM.

Le programme compte de `0` à `100` en utilisant `cmp`, `je`, `jne`, `jmp` et `add`.

C'est surtout un petit exercice pour apprendre les **conditions, les boucles et les syscalls Linux** en Assembly.

## Compilation

```bash
nasm -f elf64 main.s -o counting.o
ld couting.o -o couting
./couting
```

Made by **KirobotDev**.
