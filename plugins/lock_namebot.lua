local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['namebot'] then
                lock_namebot = data[tostring(msg.to.id)]['settings']['namebot']
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
  "تله ایجنت",
  "تله سید",
  "کرول",
  "مگاشیلد",
  "شیلد",
  "تله مون",
  "مجیک",
  "تله زیک",
  "دی مون",
  "tele agent",
  "teleseed",
  "crule",
  "mega shild",
  "shild",
  "telemon",
  "magic",
  "tele zix",
  "tele dimon",
  },
  run = run
}