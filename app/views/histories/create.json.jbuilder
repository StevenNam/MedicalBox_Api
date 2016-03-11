if @history == nil then

else
  json.partial! "histories/history", history: @history
end
