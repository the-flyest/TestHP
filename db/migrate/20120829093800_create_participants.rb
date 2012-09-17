class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :date
      t.integer :time
      t.integer :res1
      t.integer :res2
      t.integer :res3
      t.integer :res4
      t.integer :res5
      t.integer :res_final
      t.text :comment

      t.timestamps
    end
  end
end
