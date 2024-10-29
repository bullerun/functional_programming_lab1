def fibonacci(a, b, summ):
    if a > 4_000_000:
        return summ
    if a % 2 == 0:
        summ += a
    return fibonacci(b, a + b, summ)


print(fibonacci(0, 1, 0)) # 4613732
