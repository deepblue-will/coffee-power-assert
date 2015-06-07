class TryPowerAssertController
  constructor: (@scope) ->
    @scope.getFizzBuzzStr = @getFizzBuzzStr

  getFizzBuzzStr: (i) ->
    if i % 15 == 0
      'FizzBuzz'
    else if i % 5 == 0
      'Buzz'
    else if i % 3 == 0
      'Fizz'
    else
      i.toString()

TryPowerAssertController.$inject = ['$scope']
angular.module('powerAssertApp', []).controller('TryPowerAssertController', TryPowerAssertController)