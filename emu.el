;;;
;;; emu: Emulation module for each Emacs variants
;;;
;;; $Id$
;;;

(cond ((boundp 'MULE)  (require 'emu-mule))
      ((boundp 'NEMACS)(require 'emu-nemacs))
      (t               (require 'emu-orig))
      )

(if (string-match "XEmacs\\|Lucid" emacs-version)
    (require 'emu-xemacs)
  )


;;; @ Emacs 19.29 emulation
;;;

(if (not (fboundp 'buffer-substring-no-properties))
    (defalias 'buffer-substring-no-properties 'buffer-substring)
  )


;;; @ end
;;;

(provide 'emu)
