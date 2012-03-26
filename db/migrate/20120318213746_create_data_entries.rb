class CreateDataEntries < ActiveRecord::Migration
  def change
    create_table :data_entries do |t|
      t.integer :weight
      t.timestamps
    end
  end
end
