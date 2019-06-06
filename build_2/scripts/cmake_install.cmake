# Install script for directory: /Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/scripts

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/GMXRC")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE PROGRAM FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/scripts/GMXRC")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/GMXRC.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE PROGRAM FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/scripts/GMXRC.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/GMXRC.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE PROGRAM FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/scripts/GMXRC.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/GMXRC.csh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE PROGRAM FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/build_2/scripts/GMXRC.csh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/completion.bash;/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/completion.csh;/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/completion.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE FILE FILES
    "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/scripts/completion.bash"
    "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/scripts/completion.csh"
    "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/scripts/completion.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/demux.pl")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE PROGRAM FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/scripts/demux.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin/xplor2gmx.pl")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/install_2/bin" TYPE PROGRAM FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_HAdResS/hadress/scripts/xplor2gmx.pl")
endif()

