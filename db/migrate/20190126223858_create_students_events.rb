class CreateStudentsEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :students_events, id:false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :event, index: true
    end
  end
end
