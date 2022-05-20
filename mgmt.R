blogdown::config_Rprofile() # if .Rprofile exists, this opens it; if not, creates new

## creates a new site
# blogdown::new_site(theme = "wowchemy/starter-blog") 

#only needs to be run once
## starts local hugo server to preview website
## knits Rmd files to HTML
## Do NOT need to re-run if content is modified locally
blogdown::serve_site() #run this after restarting R

## if website isn't working, run 
blogdown::check_site()

blogdown::stop_server()
#after editing .Rmarkdown, Knit (ctrl+shift+k) to generate markdown.
# blogdown::new_post(title = "Matt's kickass video of doom",
#                    ext = '.Rmarkdown',
#                    subdir = "post")
#
# blogdown::new_post(title = "Our next post",
#                    ext = '.Rmarkdown',
#                    subdir = "post")
#
#

### PUBLICATION
# Publishing a blogdown website involves copying the output directory containing all your rendered site files (typically, a bunch of *.html files and site assets like fonts, CSS, JavaScript, and images) to a web server or web hosting service.

# do this when a hugo server is not running
# this creates a public folder
blogdown::hugo_build()

### Migrating existing .md files from other repos:
# 1. take the .md file content (but not the R YAML header)
# 2. blogdown::new_post(title = 'blah')
# 3. move files from repo_x >> catullus.github.io/content/post/blah
# 4. If there are figures, there will be two sub-folders
# 4.a "repo-name-files/figures-gfm" where <repo-name> is generally the name of the markdown file or the GitHub repo
# 4.b IN THE MARKDOWN FILE, replace the image path with "index_files/figure-html"
# 4.c IN THE FILE FOLDER, replace the folder names "repo-name-files" & "figures-gfm" with "index_files" & "figure-html" respectively