defmodule ArcanumpayWeb.FallbackController do
    use ArcanumpayWeb, :controller

    def call(conn, {:error, result}) do
        conn
        |> put_status(:bad_request)
        |> put_view(ArcanumpayWeb.ErrorView)
        |> render("400.json", result: result)
    end
end