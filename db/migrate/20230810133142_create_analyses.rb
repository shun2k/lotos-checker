class CreateAnalyses < ActiveRecord::Migration[7.0]
  def change
    create_table :analyses do |t|
      t.json :data
      t.integer :times

      t.timestamps
    end
  end
end
