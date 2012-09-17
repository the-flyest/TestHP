class AddStringsToParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :sres1, :string

    add_column :participants, :sres2, :string

    add_column :participants, :sres3, :string

    add_column :participants, :sres4, :string

    add_column :participants, :sres5, :string

    add_column :participants, :sres6, :string

    add_column :participants, :sres_final, :string

  end
end
