defmodule ArcanumpayWeb.AccountsView do
    alias Arcanumpay.Account

    def render("update.json", %{account: %Account{id: account_id, balance: balance}}) do
        %{
            message: "Ballance changed successfuly",
                account: %{
                    id: account_id,
                    balance: balance                
                }
        }
    end
end