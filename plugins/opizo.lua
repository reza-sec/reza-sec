local function run(ms, matches)
local opizo = http.request('http://cruel-plus.ir/opizo.php?url='..URL.escape(matches[1])..'&mail=amirhossein13801380@gmail.com')
return 'لینک : \n'..opizo
end
return {
patterns = {
    "^[!#/][Ss][Hh][Oo][Rr][Tt] (.*)$"
  },
  run = run
}