#!/bin/bash

bazel build \
    --incompatible_enable_cc_toolchain_resolution \
    --platforms=@rules_devkitpro//:devkitpro_nx_platform \
    --action_env=DEVKITPRO=/opt/devkitpro \
    --experimental_cc_shared_library \
    \
    --toolchain_resolution_debug \
    --verbose_failures \
    --sandbox_debug \
    --experimental_ui_max_stdouterr_bytes=10048576 \
    //sample_mods/no_clip:no_clip_lib