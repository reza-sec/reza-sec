do

function run(msg, matches)
  
  if matches[1] == '!help' then
  return [[  
  
  azan [city] : نمایش  ساعات شرقی
  
  !calc : ماشین حساب
  
  !id : نمایش ایدی شما
  
  !info : نمایش اطلاعاتی از شما
  
  !short [Link] : کوتاه کردن لینک
  
  !email [email] : نمایش اطلاعات ایمیل
  
  !insta  [text] : سرچ در اینستاگرام
  
  !mphoto : تبدیل استیکر به عکس
  
  !mstick : برای تبدیل عکس به استیکر
  
  !map [city/country] : نشان دادن نقشه ی شهر یا کشور
  
  !qr [text] : ساخت بار کد
  
  !sticker [Text] : ساخت استیکر با ساپورت فارسی
  
  logo [url] : نمایش لوگوی سایت
  
  !rm [number] : حذف پیام 
  
  !quran : لیست سوره ها 
  
  !sura [number] : نمایش آن سوره
  
  !read [number] : خواندن سوره ی مورد نظز 
  
  ping [url] : برای پینگ کردن سایت
  
  config [ip or url] : نشان دادن مکان جغرافیایی با ای پی و ادرس
  
  !vc [text] : تبدیل متن به صدا
  
  
  برای دیدن تنظیمات مدیرتی از دستور :
  !help admin
  
  ]]
  end
if matches[1] == '/help' then
  return [[  
  
  azan [city] : نمایش  ساعات شرقی
  
  !calc : ماشین حساب
  
  !id : نمایش ایدی شما
  
  !info : نمایش اطلاعاتی از شما
  
  !short [Link] : کوتاه کردن لینک
  
  !email [email] : نمایش اطلاعات ایمیل
  
  !insta  [text] : سرچ در اینستاگرام
  
  !mphoto : تبدیل استیکر به عکس
  
  !mstick : برای تبدیل عکس به استیکر
  
  !map [city/country] : نشان دادن نقشه ی شهر یا کشور
  
  !qr [text] : ساخت بار کد
  
  !sticker [Text] : ساخت استیکر با ساپورت فارسی
  
  logo [url] : نمایش لوگوی سایت
  
  !rm [number] : حذف پیام 
  
  !quran : لیست سوره ها 
  
  !sura [number] : نمایش آن سوره
  
  !read [number] : خواندن سوره ی مورد نظز 
  
  ping [url] : برای پینگ کردن سایت
  
  config [ip or url] : نشان دادن مکان جغرافیایی با ای پی و ادرس
  
  !vc [text] : تبدیل متن به صدا
  
  
  برای دیدن تنظیمات مدیرتی از دستور :
  
  !help admin
  
  ]]
  end

  if matches[1] == '!help admin' then
  return [[  👤دستورات مدیریتی👤 :
  
  
  !who : برای دریافت اطلاعات کامل اعضا
  
  !block [reply] : بلاک کردن یوزر از گروه
  
  !tosuper : برای ارتقاع گروه به سوپر گروه
  
  !kick [id] : کیک  یوزر مورد نظر
  
  !ban [reply] : بن کردن یوزر در گروه
  
  !modlist : برای نمایش ادمین ها 
  
  !promote [reply] : ترفیع به مدیریت در ربات
  
  !demote [reply]: حدف کردن از مدریت ربات
  
  !setname [newname] : عوض کردن اسم گروه
  
  !setphoto : برای تغییر عکس گروه
  
  !del [reply] : برای پاک کردن چت
  
  !setabout [your Text] : اضافه کردن توضیحات گروه
  
  !setrules [Your Text] : نوشتن قوانین گروه
  
  !rules : برای دریافت قوانین
  
  !mute [Filter] : فیلتر کردن
  mute طرز استفاده از : !mute all or audio or phot or video or gifs or documents or text
  
  
  !unmute : برای غیر فعال کردن فیلتر
  unmute طرز استفاده از : !unmute all or audio or phot or video or gifs or documents or text
  
  
  !muteslist : mute لیست تنظم شده های 
  
  !public [yes/no] : برای اینکه کسی بتونی با ایدی گروه وارد شه 
  
  !settings : نمایش تنظیمات گروه
  
  !muttuser [reply]/[id] : فیلتر کردن شخصی در گروه
  
  !setlink : ست کردن لینک
  
  !newlink : ساختن لینک جدید
  
  !link : نمایش لینک گروه 
  
  !addbadword [text] : کلمتای که دوست ندارید در گروه گفته شود را بزنید تا روبات پاک کند
  
  !rw [text] : حذف کلمه ی اضافه شده در badword
  
  !clearbadwords : حذف تمامی کلمات بد ورد
  
  !badwords : لیست تمامی کلمات فیلتر شده
  
  !actuser : نمایش کاربران فعال در گروه
  
  !lock fwd : برای قفل کردن فوروارد
  
  !unlock fwd : برای باز کردن فوروارد
  
  !lock reply : برای قفل کردن ری پلی
  
  !unlock reply : برای باز کردن ریپلی
  _________________________________________________________________
  
  
]]
end
end


return {
  description = "Shows bot version", 
  usage = "version: Shows bot version",
  patterns = {
    "^[#!/]help$",
    "^[#!/]help admin$"
  }, 
  run = run 
}

end
