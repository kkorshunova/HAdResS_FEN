# Install script for directory: /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/src/kernel

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/lib/libgmxpreprocess.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/lib" TYPE STATIC_LIBRARY FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/libgmxpreprocess.a")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/lib/libgmxpreprocess.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/lib/libgmxpreprocess.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/lib/libgmxpreprocess.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmdrunx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/mdrun")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/mdrun")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/mdrun" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/mdrun")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/mdrun")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/grompp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/grompp")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/grompp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/grompp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/grompp")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/tpbconv")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/tpbconv")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/tpbconv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/tpbconv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/tpbconv")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/pdb2gmx")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/pdb2gmx")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/pdb2gmx" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/pdb2gmx")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/pdb2gmx")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_protonate")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/g_protonate")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_protonate" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_protonate")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_protonate")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_luck")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/g_luck")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_luck" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_luck")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_luck")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxdump")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/gmxdump")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxdump" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxdump")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxdump")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_x2top")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/g_x2top")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_x2top" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_x2top")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/g_x2top")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxcheck")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE EXECUTABLE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/gmxcheck")
  if(EXISTS "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxcheck" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxcheck")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -u -r "$ENV{DESTDIR}/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/gmxcheck")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/lib/pkgconfig/libgmxpreprocess.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/lib/pkgconfig" TYPE FILE RENAME "libgmxpreprocess.pc" FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/src/kernel/libgmxpreprocess.pc")
endif()

