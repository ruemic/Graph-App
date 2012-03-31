class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :rating

      t.timestamps
    end
  end
end
