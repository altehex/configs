if status is-interactive

  if test "$DISPLAY" = "" -a "$XDG_VTNR" = 1
    tbsm
  end

  alias sai2="wine /usr/local/bin/sai2.d/sai2.exe"
  alias viv="vivaldi --no-sandbox"

end
