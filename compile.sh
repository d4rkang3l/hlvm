g++ -Wall -O3 -c llvm.cpp
g++ -Wall -O3 -shared runtime.cpp -o libruntime.so
ocamlc -g -dtypes -cclib -lstdc++ -cclib -lsigsegv llvm.cma llvm_executionengine.cma llvm_target.cma llvm_scalar_opts.cma llvm_analysis.cma llvm_bitwriter.cma unix.cma type.ml expr.ml llvm.o llvm_stubs.c hlvm.ml test.ml -o hlvm
ocamlc -pp camlp4oof -I +camlp4 camlp4lib.cma -g -dtypes -cclib -lstdc++ -cclib -lsigsegv llvm.cma llvm_executionengine.cma llvm_target.cma llvm_scalar_opts.cma llvm_analysis.cma llvm_bitwriter.cma unix.cma type.cmo expr.cmo llvm.o llvm_stubs.c hlvm.cmo toplevel.ml -o toplevel
