class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :issue
      t.string :description
      t.integer :priority
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
