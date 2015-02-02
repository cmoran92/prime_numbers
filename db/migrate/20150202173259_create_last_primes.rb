class CreateLastPrimes < ActiveRecord::Migration
  def change
    create_table :last_primes do |t|
      t.integer :prime

      t.timestamps
    end
  end
end
