defmodule Chat.PageView do
  use Chat.View

  def message_user(message) do
    message[:name]
  end

  def message_body(message) do
    message[:body]
  end
end
