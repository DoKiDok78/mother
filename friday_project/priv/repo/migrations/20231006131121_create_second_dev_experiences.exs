defmodule FridayProject.Repo.Migrations.CreateSecondDevExperiences do
  use Ecto.Migration

  def change do
    create table(:second_dev_experiences) do
      add :name, :string
      add :description, :string
      add :nb_thing, :integer

      timestamps()
    end
  end
end
