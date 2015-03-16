if ($args.Length -eq 0) {
  echo "need argument"
} elseif ($args.Length -eq 1) {
  if ((get-command $args[0]).path.length -eq 0) { # not a command, perhaps a builtin
    Start-Process powershell -Verb runAs -ArgumentList $args
  } else {
    Start-Process $args[0] -Verb runAs
  }
} else {
  if ((get-command $args[0]).path.length -eq 0) { # not a command, perhaps a builtin
    Start-Process powershell -Verb runAs -ArgumentList $args
  } else {
    Start-Process $args[0] -Verb runAs -ArgumentList $args[1..$args.length]
  }
}
