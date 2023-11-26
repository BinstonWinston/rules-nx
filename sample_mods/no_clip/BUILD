load("@rules_devkitpro//:tools.bzl", "dkp_cc_library", "dkp_nso", "dkp_ips_patch", "dkp_atmosphere_package")

dkp_cc_library(
    name = "no_clip_lib",
    srcs = glob([
        "**/*.c",
        "**/*.cpp",
        "**/*.s",
    ]),
    hdrs = glob([
        "**/*.h",
        "**/*.hpp",
    ]),
    includes = [
        ".",
    ],
    copts = [
        "-I./mod/src",
        "-I./mod/src/sead",
    ],
    emu = False,
    deps = [],
)

# exlaunch_mod(
#     name = "no_clip",
#     lib = ":no_clip_lib"
# )