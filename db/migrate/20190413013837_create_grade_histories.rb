class CreateGradeHistories < ActiveRecord::Migration
  def change
    create_table :grade_histories do |t|

      t.timestamps null: false
    end
  end
end
