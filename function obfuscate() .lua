local str=[[
--your code
]]
function toByteCode() 
  local bits=str:gsub(".",function(bb)return"\\"..bb:byte()end)or str.."\""
    --print('("'..code..'")')
      return print('loadstring("'..bits..'")()')
end;toByteCode();
