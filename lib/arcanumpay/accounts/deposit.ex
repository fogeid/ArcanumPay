defmodule Arcanumpay.Accounts.Deposit do

    alias Arcanumpay.Accounts.Operation
    alias Arcanumpay.Repo

    def call(params) do
        params
        |> Operation.call(:deposit)
        |> run_transaction()
    end   

    defp run_transaction(multi) do
        case Repo.transaction(multi) do
            {:error, _operation, reason, _changes} -> {:error, reason}
            {:ok, %{update_balance: account}} -> {:ok, account}
        end
    end
end