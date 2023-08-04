class CreateLoto7s < ActiveRecord::Migration[7.0]
  def change
    create_table :loto7s do |t|
      t.integer :times
      t.string :first
      t.string :second
      t.string :third
      t.string :forth
      t.string :fifth
      t.string :sixth
      t.string :seventh
      t.string :bonusfirst
      t.string :bonussecond
      t.datetime :announcement
      t.integer :firstcounts
      t.integer :secondcounts
      t.integer :thirdcounts
      t.integer :forthcounts
      t.integer :fifthcounts
      t.integer :sixthcounts

      t.timestamps
    end
  end
end
