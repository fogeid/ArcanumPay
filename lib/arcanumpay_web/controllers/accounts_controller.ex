defmodule ArcanumpayWeb.AccountsController do
    use ArcanumpayWeb, :controller

    alias Arcanumpay.Account

    action_fallback ArcanumpayWeb.FallbackController
    
    def deposit(conn, params) do
      with {:ok, %Account{} = account} <- Arcanumpay.deposit(params) do
        conn
        |> put_status(:ok)
        |> render("update.json", account: account)
      end
    end
  end