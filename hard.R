library (potools)

pkg <- file.path(system.file(package = 'potools'), 'pkg')
# copy to a temporary location to be able to read/write/update below
tmp_pkg <- file.path(tempdir(), "pkg")
dir.create(tmp_pkg)
file.copy(pkg, dirname(tmp_pkg), recursive = TRUE)

# first, extract message data
message_data = get_message_data(tmp_pkg)

# diagnose the messages for any untranslated strings shown through cat()
check_untranslated_cat(message_data)
# diagnose the messages for any untranslated strings shown through c/cpp()
check_untranslated_src(message_data)
# Diagnose the R messages in a package to discover the presence of "cracked" messages
check_cracked_messages(message_data)

# translating after fixing all the unhealthy messages
translate_package('C:\\Users\\YOUCEF\\AppData\\Local\\Temp\\RtmpysafJU\\pkg', 'ar' , diagnostics = NULL)



# cleanup
unlink(tmp_pkg, recursive = TRUE)
rm(pkg, tmp_pkg)