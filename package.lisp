;;; -*- mode: Lisp; coding: utf-8  -*-

(cl:in-package cl-user)


(cl:defpackage "https://github.com/g000001/srfi-234"
  (:export topological-sort
           topological-sort/details
           edgelist->graph
           edgelist/inverted->graph
           graph->edgelist
           graph->edgelist/inverted
           connected-components))


(defpackage "https://github.com/g000001/srfi-234#internals"
  (:use "https://github.com/g000001/r7rs-compat"
        "https://github.com/g000001/srfi-234"
        "https://github.com/g000001/srfi-26")
  (:shadowing-import-from srfi-1 reverse! filter every delete))


;;; *EOF*
