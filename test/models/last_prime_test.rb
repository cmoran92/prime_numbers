require 'test_helper'

class LastPrimeTest < ActiveSupport::TestCase
  test "first prime is 2" do
    assert LastPrime.next == [2]
  end

  test "second prime is 3" do
    LastPrime.next
    assert LastPrime.next == [3]
  end

  test "first two primes are 2 and 3" do
    assert LastPrime.next(2) == [2, 3]
  end
end
