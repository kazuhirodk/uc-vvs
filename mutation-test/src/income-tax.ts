// O IR (Imposto de Renda) é calculado da seguinte forma:
// se salário-base > 2000, IR = (150) + (salário-base - 2000) * 20%
// se 1000 < salário-base <= 2000, IR = (salário-base - 1000) * 15%
// se salário-base <= 1000, IR = 0

export function calculateTax(salary: number): number {
  if (salary > 2000.0) {
    return (150 + (salary - 2000.0) * (0.20))
  }

  if (salary > 1000.0) {
    return ((salary - 1000.0) * (0.15))
  }

  return 0.0
}
