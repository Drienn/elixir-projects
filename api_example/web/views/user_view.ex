defmodule ApiExample.UserView do
  use ApiExample.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, ApiExample.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, ApiExample.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email,
      password: user.password,
      stooge: user.stooge}
  end
end
