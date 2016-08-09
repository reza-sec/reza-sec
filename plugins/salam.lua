local function run(msg, matches)
local satanoff = 68685903
local nader = 95563207
local ali = 114900277
  local hash = 'rank:variables'
  local text = ''
    local value = redis:hget(hash, msg.from.id)
     if not value then
        if msg.from.id == tonumber(satanoff) then 
           text = text..'Satan-Off سلام\n\n'
             elseif msg.from.id == tonumber(nader) then 
           text = text..'سلام نادر\n\n'
              elseif msg.from.id == tonumber(ali) then 
           text = text..'سلام علی تک پر\n\n'
         elseif is_admin2(msg.from.id) then
           text = text..'سلام \n\n'
         elseif is_owner2(msg.from.id, msg.to.id) then
           text = text..'سلام \n\n'
         elseif is_momod2(msg.from.id, msg.to.id) then
           text = text..'سلام \n'
     else
           text = text..'سلام\n\n'
      end
      else
       text = text..'سلام '..value..'  \n\n'
     end
return text
    
end

return {
  patterns = {


"^[Ss]lm$",
"^سلام$",
"^salam",

  }, 
  run = run 
}
