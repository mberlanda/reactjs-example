class AddTechnologyColumnToMeetup < ActiveRecord::Migration
  def change
    change_table :meetups do |t|
      t.string :technology, null: false, default: "Rails"
    end
  end
end
