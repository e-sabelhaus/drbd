name "drbd-pair"
description "DRBD pair role."

override_attributes(
  "drbd" => {
    "disk" => "/dev/sdb1",
    "fs_type" => "xfs",
    "mount" => "/shared"
  }
  )

run_list(
  "recipe[xfs]",
  "recipe[drbd::pair]"
  )