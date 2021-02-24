defmodule Arcanumpay do
  alias Arcanumpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end