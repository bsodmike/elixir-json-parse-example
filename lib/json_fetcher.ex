defmodule JsonFetcher do

  def fetch(url) do
    HTTPoison.start
    {url, HTTPoison.get(url)}
    |> handle_response
    |> parse_json
    |> print_details
  end

  defp handle_response({url, resp}) do
    case resp do
      {:ok, %HTTPoison.Response{status_code: status, body: body}} -> {url, :ok, status, body}
      {:error, %HTTPoison.Error{reason: reason}} -> {url, :error, reason}
    end
  end

  defp parse_json({_, :error, error}), do: IO.puts "Error: #{error}"
  defp parse_json({url, :ok, 200, body}), do: {url, JSON.decode(body)}
  defp parse_json({_, :ok, _, _}), do: raise "Unable to fetch JSON"

  defp print_details({url, info}) do
    details = ["blog", "email"]
    user_info = Enum.map(details, fn el -> "#{el}: #{Map.fetch!(elem(info, 1), el)}" end)
    "https://api.github.com/users/" <> user = url
    IO.puts "#{user}'s Github Info: " <> Enum.join(user_info, ", ")
  end

end
