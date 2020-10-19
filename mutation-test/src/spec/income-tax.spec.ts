// PASS  src/spec/income-tax.spec.ts
// PASS  src/spec/helpers.spec.ts
// ----------------|---------|----------|---------|---------|-------------------
// File            | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s
// ----------------|---------|----------|---------|---------|-------------------
// All files       |     100 |      100 |     100 |     100 |
// src             |     100 |      100 |     100 |     100 |
//  income-tax.ts  |     100 |      100 |     100 |     100 |
// src/utils       |     100 |      100 |     100 |     100 |
//  helpers.ts     |     100 |      100 |     100 |     100 |
// ----------------|---------|----------|---------|---------|-------------------

// Test Suites: 2 passed, 2 total
// Tests:       5 passed, 5 total
// Snapshots:   0 total
// Time:        5.181 s
// Ran all test suites.

import { calculateTax } from '../income-tax'

describe('#calculateTax', () => {
  it('must calculate correctly for salary greater than 2000', () => {
    const valuesArray = [2001.0, 2010.0, 5000]
    let calculatedTax = 0.0

    valuesArray.forEach((salary) => {
      calculatedTax = 150 + (salary - 2000.0) * (0.20)

      expect(calculateTax(salary)).toEqual(calculatedTax)
    })
  })

  it('must calculate correctly for values greater than 1000 and less or equal 2000', () => {
    const valuesArray = [1001.0, 2000.0, 1500.0, 1999.0]
    let calculatedTax = 0.0

    valuesArray.forEach((salary) => {
      calculatedTax = (salary - 1000.0) * (0.15)

      expect(calculateTax(salary)).toEqual(calculatedTax)
    })
  })

  it('must return zero if value is less os equal than 1000', () => {
    const valuesArray = [1000.0, 999.0, 500.0]

    valuesArray.forEach((salary) => {
      expect(calculateTax(salary)).toBe(0)
    })
  })

  // Tests added post mutation test
  it('must calculate correctly if salary is greater or equal than 2000.0', () => {
    const valuesArray = [2000.0, 2001.0, 2010.0]
    let calculatedTax = 0.0

    valuesArray.forEach((salary) => {
      calculatedTax = 150 + (salary - 2000.0) * (0.20)

      expect(salary >= 2000.0).toBeTruthy()
      expect(calculateTax(salary)).toEqual(calculatedTax)
    })
  })

  it('must calculate correctly if salary is greater or equal than 1000.0', () => {
    const valuesArray = [1000.0, 1001.0, 1010.0]
    let calculatedTax = 0.0

    valuesArray.forEach((salary) => {
      calculatedTax = (salary - 1000.0) * (0.15)

      expect(salary >= 1000.0).toBeTruthy()
      expect(calculateTax(salary)).toEqual(calculatedTax)
    })
  })

  it('return 0 if salary is 1000', () => {
    expect(calculateTax(1000.0)).toEqual(0)
  })

  it('return 150 if salary is 2000', () => {
    expect(calculateTax(2000.0)).toEqual(150)
  })
})
