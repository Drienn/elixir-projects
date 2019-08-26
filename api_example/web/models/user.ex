defmodule ApiExample.User do
  use ApiExample.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string
    field :stooge, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :password, :stooge])
    |> validate_required([:name, :email, :password, :stooge])
  end
end
