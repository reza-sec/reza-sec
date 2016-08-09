local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['badword'] then
                lock_badword = data[tostring(msg.to.id)]['settings']['badword']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_badword == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(ک*س)$",
    "کیر",
	"کص",
	"کــــــــــیر",
	"کــــــــــــــــــــــــــــــیر",
	"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
    "ک×یر",
	"ک÷یر",
	"ک*ص",
	"کــــــــــیرر",
    "kir",
	"kos",
	"گوساله",
	"gosale",
	"gusale",
	"کیری",
	"مادر جنده",
	"جنده",
	"کوس",
	"کوص",
	"پدر سگ",
	"مادر خراب",
	"ننه",
	
  },
  run = run
}



