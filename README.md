# ARM CM4 (STM32f411)- GCC + CMAKE project

1. Tools needed:
-------------
    1. Cmake (3 or new)
    2. GNU Arm Embedded Toolchain(ARM GCC toolchain) (https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm )
       Currenly using v10.3-10/2021
    3. Ninja build tools (install by "pip install ninja" and add installed path in environmental variables)

2. Important fields to update:
---------------------------
    * name your project in CMakeLists.txt
    * paths of the ARM tool chain in arm-bare-metal.cmake
    * target boot files (should be part of CMSIS) in CMakeLists.txt
	  CMSID path used : github\STM32CubeF4\Drivers\CMSIS (v5.4.0)
                        git id : https://github.com/STMicroelectronics/STM32CubeF4.git
                        commit# : 4aba24d78fef03d797a82b258f37dbc84728bbb5 
    * copy a linker file for your target CPU into the linker dir and make sure the CMakeLists.txt refers to it.
    * add/remove any defines specific to your target in CMakeLists.txt

3. Initialise the project by running 'bootstrap.bat' or 'bootstrap.sh'. This is only needed once.

4. Compile the project by going to build/debug or build/release and run ninja.
   ninja commands:
   ninja clean
   ninja all

5. In this project:
--------------------
* C,ASM, C++ are enabled 
     - ENABLE_LANGUAGE(C CXX ASM) in CMakeLists.txt
     - So need to provide the compiler path for each:
       CMAKE_C_COMPILER, CMAKE_RC_COMPILER, CMAKE_CXX_COMPILER and CMAKE_ASM_COMPILER in arm-bare-metal.cmake
* ARM architectural related settings to be set by:
  SET(CMAKE_SYSTEM_PROCESSOR "armv7") - CM4 is ARMv7E-M (CM3(ARMv7-M), CM4(ARMv7E-M) and CM7(ARMv7E-M) are part of armv7)
  Refer : https://en.wikipedia.org/wiki/ARM_Cortex-M
* CPU flags:
  SET(CPUFLAGS "-mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mthumb")
  CPU: cortex-m4 (CM3, CM4 are based on armv7) use ARMv7E-M
  Float : hard (use FPU(hardware) instructions)
  FPU : floating-point extension to be used : fpv4-sp-d16 (used in Armv7)
  instructions : thumb
* Set linker file "LINKERFILE" and linker flags
* C, ASM and C++ compiler flags
* Include files to be added to "INCLUDE_DIRECTORIES"
  source files to be added to "add_executable"
* Then add custom commands post build POST_BUILD
  

[
- cmakelist -> make
 or
- cmakelist -> ninja

make and ninja can be used to build with cmake, in this case we use ninja
]


