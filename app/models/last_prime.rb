require 'prime'

class LastPrime < ActiveRecord::Base
  def self.next(n=1)
    instance = self.first
    last_prime = instance.try(:prime) || 1
    next_primes = []
    Prime.each do |p|
      if p>last_prime
        next_primes << p
        n -= 1
        break if n==0
      end
    end
    if instance
      instance.update prime: next_primes.last
    else
      self.create prime: next_primes.last
    end
    next_primes
  end
end
