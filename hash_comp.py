values = ["sa", "sb", "ss", "pa", "pb", "ra", "rb", "rr", "rra", "rrb", "rrr"]

def calc_hash(arr, salt, mod):
  result = []
  for v in values:
    k = 0
    for c in v:
      k = k * salt + ord(c) - ord('a')
    result.append(k % mod)
  return result

def check_valid(arr):
  if (len(set(arr)) == len(arr)):
    return True
  return False

def check_range(arr):
  return max(arr) - min(arr) + 1

INF = 987654321
best = 987654321

for salt in range(1, 1000 + 1):
  for mod in range(1, 1000 + 1):
    solution = calc_hash(values, salt, mod)
    if (check_valid(solution)):
      if (check_range(solution) < best):
        best = check_range(solution)
        best_salt = salt
        best_mod = mod
        best_solution = solution

if (best == INF):
  print('solution not found')
else:
  print(f'best comp = {best}')
  print(f'     salt = {best_salt}')
  print(f'      mod = {best_mod}')
  print(f' solution = {best_solution}')
  print(f' min, max = {min(best_solution)}, {max(best_solution)}')