class CreateHosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      # t.references :attendee, null: false, foreign_key: true
      t.references :attendee, null: false
      # t.references :attended_event, null: false, foreign_key: true
      t.references :attended_event, null: false
      t.timestamps
    end
  end
end
