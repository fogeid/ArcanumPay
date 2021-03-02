defmodule ArcanumpayWeb.AccountsController do
    use ArcanumpayWeb, :controller

    alias Arcanumpay.Account
    alias Arcanumpay.Accounts.Transactions.Response, as: TransactionResponse

    action_fallback ArcanumpayWeb.FallbackController
    
    def deposit(conn, params) do
      with {:ok, %Account{} = account} <- Arcanumpay.deposit(params) do
        conn
        |> put_status(:ok)
        |> render("update.json", account: account)
      end
    end

    def withdraw(conn, params) do
      with {:ok, %Account{} = account} <- Arcanumpay.withdraw(params) do
        conn
        |> put_status(:ok)
        |> render("update.json", account: account)
      end
    end

    def transaction(conn, params) do
      with {:ok, %TransactionResponse{} = transaction} <- Arcanumpay.transaction(params) do
        conn
        |> put_status(:ok)
        |> render("transaction.json", transaction: transaction)
      end
    end
  end