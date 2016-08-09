function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("wget http://ipecho.net/plain -O - -q ; echo"):read('*all')
  return  text

end


return {
  
  patterns = {
    '^[#/!]botip$'

  },
  run = run,
  moderated = true
}
--@satanoff