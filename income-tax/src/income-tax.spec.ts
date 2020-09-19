// PASS  src/income-tax.spec.ts
// #calculateTax
//   ✓ must calculate correctly for salary greater than 2000 (6 ms)
//   ✓ must calculate correctly for values greater than 1000 and less or equal 2000 (3 ms)
//   ✓ must return zero if value is less os equal than 1000 (2 ms)

// ---------------|---------|----------|---------|---------|-------------------
// File           | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s
// ---------------|---------|----------|---------|---------|-------------------
// All files      |     100 |      100 |     100 |     100 |
// income-tax.ts  |     100 |      100 |     100 |     100 |
// ---------------|---------|----------|---------|---------|-------------------
// Test Suites: 1 passed, 1 total
// Tests:       3 passed, 3 total
// Snapshots:   0 total
// Time:        1.732 s, estimated 2 s
// Ran all test suites.

import { calculateTax } from './income-tax'

describe('#calculateTax', () => {
  it('must calculate correctly for salary greater than 2000', () => {
    const valuesArray = [2001.0].concat(
      Array.from(Array(10)).map( x => Math.random() * (10000 - 2001) + 2001 )
    )
    let calculatedTax: number = 0.0

    valuesArray.forEach((salary) => {
      calculatedTax = 150 + (salary - 2000.0) * (0.20)

      expect(calculateTax(salary)).toEqual(calculatedTax)
    })
  })

  it('must calculate correctly for values greater than 1000 and less or equal 2000', () => {
    const valuesArray = [1001.0, 2000.0].concat(
      Array.from(Array(10)).map(x => Math.random() * (2000 - 1001) + 1001)
    )
    let calculatedTax: number = 0.0

    valuesArray.forEach((salary) => {
      calculatedTax = (salary - 1000.0) * (0.15)

      expect(calculateTax(salary)).toEqual(calculatedTax)
    })
  })

  it('must return zero if value is less os equal than 1000', () => {
    const valuesArray = [1000.0].concat(
      Array.from(Array(10)).map(x => Math.random() * (1000 - 0) + 0)
    )

    valuesArray.forEach((salary) => {
      expect(calculateTax(salary)).toBe(0)
    })
  })
})
