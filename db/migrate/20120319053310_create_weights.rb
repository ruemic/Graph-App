class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.string :name
      t.integer :weight

      t.timestamps
    end
  end
end
