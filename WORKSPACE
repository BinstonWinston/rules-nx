
local_repository(
    name = "rules_devkitpro",
    path = "./rules_devkitpro",
)

local_repository(
    name = "rules_exlaunch",
    path = "./rules_exlaunch",
)

### DEVKITPRO COMPILER SETUP
register_execution_platforms(
    #    The first toolchain is present to cause targets which were not defined
    # to use the custom toolchain to select an execution platform with
    # an undefined value for constraint setting nonstandard_toolchain. The
    # undefined value will then mismatch the value for nonstandard_toolchain of
    # @rules_devkitpro//:devkitpro_nx_toolchain (which is simple_cpp_toolchain).
    #    The dependency of a target on the non-standard toolchain is specified
    # by having the exec_compatible_with attribute of the target include
    # @rules_devkitpro//devkitpro_toolchain:simple_cpp_toolchain. This causes the first
    # execution platform to be rejected during execution platform selection.
    "@local_config_platform//:host",
    "@rules_devkitpro//:devkitpro_nx_platform"
)

register_toolchains(
    "@rules_devkitpro//:devkitpro_nx_toolchain"
)