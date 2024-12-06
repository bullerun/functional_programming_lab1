(lang dune 3.16)

(name lab1)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license MIT)

(documentation https://url/to/documentation)

(package
 (name lab1)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends
  (ounit2
   (and
    (>= 2.2.7)
    :with-test))
  ocaml
  dune)
 (tags
  (topics "to describe" your project)))