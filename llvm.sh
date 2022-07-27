git clone https://github.com/llvm/llvm-project
cd llvm-project
mkdir build
cd build
cmake -G "Unix Makefiles" -DLLVM_ENABLE_PROJECTS="clang" ../llvm
make 
