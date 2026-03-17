.global lab1
.syntax unified
.thumb

// Задаємо значення
#define A #8
#define B #4
#define C #3

lab1:
    push {lr}             // Зберігаємо адресу повернення

    // 1. Рахуємо (A - B)
    mov r0, A             // r0 = A
    mov r1, B             // r1 = B
    sub r0, r0, r1        // r0 = A - B

    // 2. Множимо результат на 3
    mov r1, #3            // r1 = 3
    mul r0, r0, r1        // r0 = (A - B) * 3 

    // 3. Рахуємо 2^C
    mov r1, #1            // r1 = 1
    mov r2, C             // r2 = C
    lsl r1, r1, r2        // r1 = 1 << C (що дорівнює 2^C) 

    // 4. Додаємо результати
    add r0, r0, r1        // r0 = (A - B) * 3 + 2^C

    pop {pc} 