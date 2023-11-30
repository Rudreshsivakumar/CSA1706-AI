from itertools import permutations

def is_valid_solution(mapping, equation):

    s, e, n, d, m, o, r, y = map(mapping.get, 'SENDMONEY')
    if s == 0 or m == 0:  
        return False
    return s * 1000 + e * 100 + n * 10 + d + m * 1000 + o * 100 + r * 10 + e == m * 10000 + o * 1000 + n * 100 + e * 10 + y

def solve_cryptarithmetic(equation):
    unique_chars = set(char for char in equation if char.isalpha())
    if len(unique_chars) > 10:
        print("Invalid equation. Too many unique characters.")
        return

    for perm in permutations(range(10), len(unique_chars)):
        mapping = dict(zip(unique_chars, perm))
        if is_valid_solution(mapping, equation):
            print("Solution found:")
            print(mapping)
            return

    print("No solution found.")

equation = "SEND + MORE = MONEY"
solve_cryptarithmetic(equation)
