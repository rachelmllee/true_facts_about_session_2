class AddPersonRefToFacts < ActiveRecord::Migration
  def change
    add_reference :facts, :person, index: true, foreign_key: true
  end
end
