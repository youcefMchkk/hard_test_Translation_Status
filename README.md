# Hard task result

## The Task

The task is to install `potools` R package and provide a simple example
of using it.

## Installing the `potools` R package

    # install the package
    install.packages('potools')

    # make sure that all the system utilities for running package translation are installed
    check_potools_sys_reqs()

## Explanation of the Source Code

The code copy the package to a temporary location to be able to
read/write/update the files in it, after that the `get_message_data()`
method will extract all the messages in the package. after retrieving,
the `check_untranslated_cat(message_data)`
`check_untranslated_src(message_data)`
`check_cracked_messages(message_data)` will check for any ‘unhealthy’
messages that are not in the perfect format for translating, and will
return them with the suggestion to change them. after changing them,
we’re going to run the `translate_package()` which will have as input
the path of the package folder and the language (we’ll set the
diagnostics argument to NULL because we already fixed the messages). it
will produce .po files and .mo files that contain the translation of the
messages.
