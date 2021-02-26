defmodule Arcanumpay do
  alias Arcanumpay.Users.Create, as: UserCreate
  alias Arcanumpay.Accounts.Deposit

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call
  # defdelegate create_user(params), to: UserCreate, as: :call
end