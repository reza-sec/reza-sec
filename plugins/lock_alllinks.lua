local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['alllink'] then
                lock_namebot = data[tostring(msg.to.id)]['settings']['alllink']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_namebot == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
return {
  patterns = {
    "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/",
        "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]",
    "[Ht][Tt][Tt][Pp][Ss]://",
    "[Ht][Tt][Tt][Pp]://",
    "[Ww][Ww][Ww].",
  },
  run = run
}
