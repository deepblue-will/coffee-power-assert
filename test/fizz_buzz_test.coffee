
describe "FizzBuzz", ->
  beforeEach ->
    @target = new FizzBuzz()

  describe "#getFizzBuzzStr()は", ->
    it "3で割り切れる数字を与えるとFizzを返却すること",  ->
      assert @target.getFizzBuzzStr(3) == "Fizz"

    it "5で割り切れる数字を与えるとBuzzを返却すること",  ->
      assert @target.getFizzBuzzStr(5) == "Buzz"

    it "3と5で割り切れる数字を与えるとFizzBuzzを返却すること",  ->
      assert @target.getFizzBuzzStr(15) == "FizzBuzz"

    it "3と5で割り切れない数字を与えると数字文字列を返却すること",  ->
      assert @target.getFizzBuzzStr(2) == "2"

    it "わざと失敗させるテストです",  ->
      assert @target.getFizzBuzzStr(3) == "2"
