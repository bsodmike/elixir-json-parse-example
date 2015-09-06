defmodule JsonFetcher do

  def get_url(url) do
    HTTPoison.start
    HTTPoison.get(url)
    |> handle_response
    |> parse_json
  end

  defp handle_response(resp) do
    case resp do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body}
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
    end
  end

  defp parse_json(data) do
    case data do
      {:ok, body} ->
        JSON.decode body
    end
  end

end
