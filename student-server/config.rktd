((active-dirs ("hw3-part1" "hw3-part2"))
 (inactive-dirs ("hw3" "hw3-part1"))
 (allow-new-users #f)
 (allow-change-info #t)
 (max-upload 1024000)
 (username-case-sensitive #t)
 (web-log-file "web.log")
 (log-file "stdout.log")
 (user-regexp #rx"^[.a-zA-Z0-9-]+$")
 (session-timeout 45)
 (extra-fields
  (("Full Name" #f #f)
   ("Email" #f #f)
   ("Lab" - #f)
   ("Grader" - #f)))
 (master-password #f)
 (group-authentication multi))
