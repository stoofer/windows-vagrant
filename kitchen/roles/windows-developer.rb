name "windows-developer"
description "Windows Developer"
run_list(
         'recipe[utils::launchy]',
         'recipe[utils::baretail]',
         'recipe[utils::fiddler]',
         'recipe[utils::wget-windows]',
         'recipe[utils::chrome]',
         'recipe[notepad-plus-plus]',
         'recipe[git]',
         'recipe[git::git-extensions]',
         'recipe[git::github-client]',
         'recipe[visual-studio-2012]',
         'recipe[visual-studio-2012::resharper]',
         'recipe[leiningen]'
         )
