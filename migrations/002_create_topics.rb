Sequel.migration do
  up do
    create_table(:topics) do
      primary_key :id

      String :name

      foreign_key :user_id
    end
  end

  down do
    drop_table(:topics)
  end

end