# i3status configuration file.
# see "man i3status" for documentation.


# It is important that this file is edited as UTF-8.
# The following line should contain a sharp s:
# ß
# If the above line is not correctly displayed, fix your editor first!

general {
        colors = true
        interval = 5
}


order += "battery all"

order += "memory"
order += "tztime local"


battery all {
        format = "%status %percentage %remaining"
}


memory {
        format = "%used | %available"
        threshold_degraded = "1G"
        format_degraded = "MEMORY < %available"
}

tztime local {
        format = "%Y-%m-%d %H:%M:%S"
}
