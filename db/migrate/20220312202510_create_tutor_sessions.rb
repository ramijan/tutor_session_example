class CreateTutorSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :tutor_sessions do |t|

      t.timestamps
    end
  end
end
