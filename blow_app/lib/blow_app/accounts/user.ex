defmodule BlowApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias BlowApp.Accounts.User


  schema "users" do
    field :email, :string
    field :name, :string
    has_many :blog_posts, BlowApp.Blog.Post, foreign_key: :accounts_user_id

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
