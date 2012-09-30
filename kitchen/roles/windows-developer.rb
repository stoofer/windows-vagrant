name "windows-developer"
description "Windows Developer"
run_list(
         'recipe[utils::wget-windows]',
         'recipe[notepad-plus-plus]',
         'recipe[git]',
         'recipe[git::git-extensions]',
         'recipe[visual-studio-2012]',
         'recipe[jdk]'
         )
