export function generateArrayNumbers(size: number, min: number, max: number): number[] {
  return Array.from(Array(size)).map(() => Math.random() * (max - min) + min)
}
