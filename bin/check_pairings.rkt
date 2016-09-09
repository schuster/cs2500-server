#lang racket

(require "utils/constants.rkt"
         "utils/data-parse.rkt")

(define users-file
  (build-path student-server-dir "users.rktd"))

(define pairings-file
  (command-line
   #:args (pairings-file)
   pairings-file))

(unless (file-exists? pairings-file)
  (raise-user-error 'pairing-check "File ~a does not exist" pairings-file))

(define pairs
  (read-pairs pairings-file))

(define users
  (read-users users-file))

(for ([i (in-list pairs)])
  (unless (< (length i) 3)
    (raise-user-error 'invalid-pairing "Group ~a is too large"
                      i))
  (for ([j (in-list i)])
    (unless (dict-has-key? users (string->symbol j))
      (raise-user-error
       'invalid-user "Found user ~a in pairs file that is not in users file" j))))
  