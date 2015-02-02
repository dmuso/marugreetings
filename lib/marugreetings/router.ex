defmodule Marugreetings.Router.Homepage do
  use Maru.Router

  get do
    %{ hello: :world } |> json
  end
end

defmodule Marugreetings.API do
  use Maru.Router

  mount Marugreetings.Router.Homepage

  def error(conn, e) do
    "Server Error" |> text(500)
  end
end