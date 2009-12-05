cd >/dev/null 2>/dev/null

if test (uname -s) = "Darwin"
  set -x PATH /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin /usr/X11/bin
  set -x MANPATH /usr/local/share/man /usr/X11/man /usr/share/man

  function vi
    mate $argv
  end
end

set gems (gem env gemdir)/gems
set git_concise_log_format '--pretty=format:%Cblue%h%Creset %cr %Cgreen%an%Creset %s'