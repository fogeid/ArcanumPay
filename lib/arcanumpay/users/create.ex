defmodule Arcanumpay.Users.Create do
    alias Arcanumpay.{Repo, User}
    
    def call(params) do
        params
        |> User.changeset()
        |> Repo.insert()
    end
end