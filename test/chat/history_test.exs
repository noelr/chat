defmodule Chat.HistoryTest do
  use ExUnit.Case

  test "adding messages" do
    Chat.History.start_link
    assert Chat.History.messages == []
    Chat.History.add("Guest1", "Dies ist ein Test")
    assert Chat.History.messages == [%{:name => "Guest1", :body => "Dies ist ein Test"}]
  end
end
