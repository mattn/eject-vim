function! s:eject()
  let winmm = libcallex#load("winmm.dll")
  echo winmm.call("mciSendStringA", ["set cdaudio door open", 0, 0, 0], "number")
  call winmm.free()
endfunction

command! Eject call s:eject()
