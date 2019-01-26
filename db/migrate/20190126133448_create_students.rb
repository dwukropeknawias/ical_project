class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :index
      t.string :first_name
      t.string :last_name
      t.string :field_of_study

      t.timestamps
    end
  end
end
