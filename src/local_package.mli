(** Represents an in source package definition along with all of its associated
    stanzas required for installing *)

open Stdune

type t

val make : ctx:Context.t -> pkg:Package.t -> t

val hash : t -> int

val to_dyn : t Dyn.Encoder.t

val build_dir : t -> Path.Build.t

val meta_file : t -> Path.Build.t

val opam_file : t -> Path.Build.t

val dune_package_file : t -> Path.Build.t

val name : t -> Package.Name.t

val install_paths : t -> Install.Section.Paths.t

val package : t -> Package.t

val meta_template : t -> Path.Build.t
