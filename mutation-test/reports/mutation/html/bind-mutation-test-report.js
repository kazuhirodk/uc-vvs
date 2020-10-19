document.querySelector('mutation-test-report-app').report = {"files":{"/Users/kazuhirodk/workspace/UNIFESP/uc-vvs/mutation-test/src/income-tax.ts":{"language":"typescript","mutants":[{"id":"0","location":{"end":{"column":2,"line":16},"start":{"column":54,"line":6}},"mutatorName":"BlockStatement","replacement":"{}","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for salary greater than 2000"},{"id":"3","location":{"end":{"column":22,"line":7},"start":{"column":7,"line":7}},"mutatorName":"EqualityOperator","replacement":"salary >= 2000.0","status":"Survived"},{"id":"2","location":{"end":{"column":22,"line":7},"start":{"column":7,"line":7}},"mutatorName":"ConditionalExpression","replacement":"false","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for salary greater than 2000"},{"id":"1","location":{"end":{"column":22,"line":7},"start":{"column":7,"line":7}},"mutatorName":"ConditionalExpression","replacement":"true","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for values greater than 1000 and less or equal 2000"},{"id":"5","location":{"end":{"column":4,"line":9},"start":{"column":24,"line":7}},"mutatorName":"BlockStatement","replacement":"{}","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for salary greater than 2000"},{"id":"4","location":{"end":{"column":22,"line":7},"start":{"column":7,"line":7}},"mutatorName":"EqualityOperator","replacement":"salary <= 2000.0","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for salary greater than 2000"},{"id":"6","location":{"end":{"column":45,"line":8},"start":{"column":13,"line":8}},"mutatorName":"ArithmeticOperator","replacement":"150 - (salary - 2000.0) * 0.20","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for salary greater than 2000"},{"id":"7","location":{"end":{"column":45,"line":8},"start":{"column":19,"line":8}},"mutatorName":"ArithmeticOperator","replacement":"(salary - 2000.0) / 0.20","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for salary greater than 2000"},{"id":"8","location":{"end":{"column":35,"line":8},"start":{"column":20,"line":8}},"mutatorName":"ArithmeticOperator","replacement":"salary + 2000.0","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for salary greater than 2000"},{"id":"9","location":{"end":{"column":22,"line":11},"start":{"column":7,"line":11}},"mutatorName":"ConditionalExpression","replacement":"true","status":"Killed","description":"Killed by: #calculateTax must return zero if value is less os equal than 1000"},{"id":"10","location":{"end":{"column":22,"line":11},"start":{"column":7,"line":11}},"mutatorName":"ConditionalExpression","replacement":"false","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for values greater than 1000 and less or equal 2000"},{"id":"12","location":{"end":{"column":22,"line":11},"start":{"column":7,"line":11}},"mutatorName":"EqualityOperator","replacement":"salary <= 1000.0","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for values greater than 1000 and less or equal 2000"},{"id":"11","location":{"end":{"column":22,"line":11},"start":{"column":7,"line":11}},"mutatorName":"EqualityOperator","replacement":"salary >= 1000.0","status":"Survived"},{"id":"13","location":{"end":{"column":4,"line":13},"start":{"column":24,"line":11}},"mutatorName":"BlockStatement","replacement":"{}","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for values greater than 1000 and less or equal 2000"},{"id":"14","location":{"end":{"column":39,"line":12},"start":{"column":13,"line":12}},"mutatorName":"ArithmeticOperator","replacement":"(salary - 1000.0) / 0.15","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for values greater than 1000 and less or equal 2000"},{"id":"15","location":{"end":{"column":29,"line":12},"start":{"column":14,"line":12}},"mutatorName":"ArithmeticOperator","replacement":"salary + 1000.0","status":"Killed","description":"Killed by: #calculateTax must calculate correctly for values greater than 1000 and less or equal 2000"}],"source":"// O IR (Imposto de Renda) é calculado da seguinte forma:\n// se salário-base > 2000, IR = (150) + (salário-base - 2000) * 20%\n// se 1000 < salário-base <= 2000, IR = (salário-base - 1000) * 15%\n// se salário-base <= 1000, IR = 0\n\nexport function calculateTax(salary: number): number {\n  if (salary > 2000.0) {\n    return (150 + (salary - 2000.0) * (0.20))\n  }\n\n  if (salary > 1000.0) {\n    return ((salary - 1000.0) * (0.15))\n  }\n\n  return 0.0\n}\n"}},"schemaVersion":"1.0","thresholds":{"high":80,"low":60,"break":null}};