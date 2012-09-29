name "windows-developer"
description "Windows Developer"
run_list(
         'recipe[notepad-plus-plus]',
         'recipe[visual-studio-2012]'
         )
