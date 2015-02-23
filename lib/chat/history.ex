defmodule Chat.History do
  def start_link do
    Agent.start_link fn -> [] end, name: :history
  end

  def messages do
    Agent.get(:history, fn list -> list end)
  end

  def add(name, body) do
    new = %{:name => name, :body => body}
    Agent.update(:history, fn list -> [new|list] end)
  end
end
