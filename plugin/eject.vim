function! s:eject()
  if has('mac')
    call system("drutil tray eject")
  else
    let winmm = libcallex#load("winmm.dll")
    echo winmm.call("mciSendStringA", ["set cdaudio door open", 0, 0, 0], "number")
    call winmm.free()
  endif
endfunction

command! Eject call s:eject()
