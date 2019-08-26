defmodule BlowAppWeb.Router do
  use BlowAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlowAppWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
    resources "/posts", PostController, except: [:new, :edit]
  end
end
