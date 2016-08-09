function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("sudo service redis-server start && redis-cli exit"):read('*all')
  return  "خطا های redis حل شد"

end


return {
  
  patterns = {
    '^[#/!]redis$'

  },
  run = run,
  moderated = true
}
--@satanoff