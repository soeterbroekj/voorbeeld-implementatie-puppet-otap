# Define the default node behavior.
node default {

    # stdlib
    include stdlib

    # motd
    include motd

}

import 'nodes/*.pp'

#EOF
