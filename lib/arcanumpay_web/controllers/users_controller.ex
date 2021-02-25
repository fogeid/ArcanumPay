defmodule ArcanumpayWeb.UsersController do
    use ArcanumpayWeb, :controller

    alias Arcanumpay.User

    action_fallback ArcanumpayWeb.FallbackController
    
    def create(conn, params) do
      with {:ok, %User{} = user} <- Arcanumpay.create_user(params) do
        conn
        |> put_status(:created)
        |> render("create.json", user: user)
      end
    end
  end