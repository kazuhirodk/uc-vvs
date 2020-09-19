import { generateArrayNumbers } from '../utils/helpers'

describe('#generateArrayNumbers', () => {
  it('must generate a array with specified param size', () => {
    const randomArray = generateArrayNumbers(15, 0, 100)

    expect(randomArray.length).toBe(15)
  })

  it('must generate random numbers with valid values according to params', () => {
    const randomArray = generateArrayNumbers(1, 100, 300)

    expect(randomArray[0] >= 100).toBeTruthy()
    expect(randomArray[0] <= 300).toBeTruthy()
  })
})
