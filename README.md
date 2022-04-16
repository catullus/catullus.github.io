# catullus.github.io
GitHub Pages

# Setting up Ruby and Jekyll

https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll#prerequisites

Basically, `jekyll new` 

1. Delete the Gem.lock file if it is in the folder created by Jekyll

After config, modify the Gemfile with the following: 

3. comment out line `# gem "jekyll", "~> 4.2.2"`
4. add line `gem "webrick"`
5. add line `gem "github-pages", "~> 225", group: :jekyll_plugins` 

# Testing Jekyll Locally

https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll

Basically, `bundle exec jekyll serve` then navigate to 127.0.0.1:4000 (port is mandatory in URL)

# Add page(s)

https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/adding-content-to-your-github-pages-site-using-jekyll

# Add theme

https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/adding-a-theme-to-your-github-pages-site-using-jekyll
