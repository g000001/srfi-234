(defsystem :srfi-234
  :version
  "20240808"
  :description
  "SRFI 234 for CL: Topological Sorting"
  :long-description
  "SRFI 234 for CL: Topological Sorting
https://srfi.schemers.org/srfi-234"
  :author
  "John Cowan and Arne Babenhauserheide"
  :maintainer
  "CHIBA Masaomi"
  :license
  "Unlicense"
  :serial t
  :depends-on (:r7rs-compat :srfi-1 :srfi-26)
  :components ((:file "package")
               (:file "srfi-234")))

(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-234))))
  (let ((name "https://github.com/g000001/srfi-234")
        (nickname :srfi-234))
    (if (and (find-package nickname)
             (not (eq (find-package nickname) (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


;;; *EOF*
