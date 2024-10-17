My MSc thesis at Imperial College London
Focuses on utilizing Arm's MTE (https://source.android.com/docs/security/test/memory-safety/arm-mte) technology for software compartmentalization.
In high level, this reposiotry is comprised of an LLVM pass which instruments your code and applies a user-defines memory tag to all load/store instructions in the code. This means that data access is only possible when the memory tag and pointer tag match and thus providing data isolation.
