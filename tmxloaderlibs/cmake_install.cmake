# Install script for directory: C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/Program Files/tmx-loader")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples/maps" TYPE FILE FILES
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/addRemove.tmx"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/b2d.tmx"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/desert.tmx"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/desert.tsx"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/diffuse.png"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/forest_tileset.png"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/isometric_grass_and_water.png"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/isometric_grass_and_water.tmx"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/sewer_tileset.png"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/shader_example.tmx"
    "C:/Users/James/Desktop/Hacker RPG/sfml-tmxloader-master/maps/tmw_desert_spacing.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Debug/BenchMark.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Release/BenchMark.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/MinSizeRel/BenchMark.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/RelWithDebInfo/BenchMark.exe")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Debug/DrawWithDebug.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Release/DrawWithDebug.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/MinSizeRel/DrawWithDebug.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/RelWithDebInfo/DrawWithDebug.exe")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Debug/Isometric.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Release/Isometric.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/MinSizeRel/Isometric.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/RelWithDebInfo/Isometric.exe")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Debug/QuadTree.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Release/QuadTree.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/MinSizeRel/QuadTree.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/RelWithDebInfo/QuadTree.exe")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Debug/ShaderEffects.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/Release/ShaderEffects.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/MinSizeRel/ShaderEffects.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tmx/examples" TYPE EXECUTABLE FILES "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/RelWithDebInfo/ShaderEffects.exe")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "C:/Users/James/Desktop/Hacker RPG/tmxloaderlibs/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
