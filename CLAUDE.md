# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Jekyll-based blog (blog.forret.com) that was migrated from WordPress. It uses the Beautiful Jekyll remote theme and includes a custom bash workflow script (`jkl.sh`) for managing posts and deployments.

## Project Structure

- `_posts/[YEAR]/` - Blog posts organized by year (2000-2025)
- `_drafts/_template.md` - Template for new blog posts
- `_layouts/` - Custom layouts (default, post, page, with_category, with_tag)
- `_includes/` - Reusable components and partials
- `category/` - Auto-generated category pages (managed by jekyll_taxonomy)
- `tag/` - Auto-generated tag pages (managed by jekyll_taxonomy)
- `wp-content/uploads/[YEAR]/[MONTH]/` - Images organized by year/month
- `public/` - Static assets (CSS, JS, images)
- `hyde/` - Hyde theme reference (Jekyll theme based on Poole)
- `jkl.sh` - Custom bash workflow script (bashew-based)
- `VERSION.md` - Version tracking for deployment

## Key Configuration

- **Jekyll version**: ~4.2.0
- **Theme**: `daattali/beautiful-jekyll` (remote theme)
- **Permalink structure**: `/:year/:month/:day/:title/`
- **Pagination**: 10 posts per page

### Jekyll Plugins

- jekyll-paginate
- jekyll-redirect-from
- jekyll-seo-tag
- jekyll-sitemap

## Development Workflow

### Creating a New Post

Use the `jkl.sh` script to create new posts:

```bash
./jkl.sh new
```

This will:
1. Prompt for publication date (defaults to today)
2. Prompt for post title
3. Generate a slug from the title
4. Create image folder: `wp-content/uploads/[YEAR]/[MONTH]/[slug].jpg`
5. Generate featured image using `splashmark` (with dark/grain effects)
6. Create markdown file: `_posts/[YEAR]/[DATE]-[slug].md`
7. Populate from template with metadata (title, date, image, slug)

### Post Front Matter Structure

```yaml
---
title: Post Title
layout: post
image: /wp-content/uploads/[YEAR]/[MONTH]/[slug].jpg
permalink: /[YEAR]/[DATE]/[slug]/
date: YYYY-MM-DD
categories:
    - category-name
tags:
    - tag-name
---
```

### Local Development Server

```bash
./jkl.sh serve
```

This runs Jekyll in a Docker container:
- Container name: `jekyll-serve-jekyll.forret.com`
- Port: 4000
- Uses `bretfisher/jekyll-serve` image
- Reuses existing container if available

### Deployment

```bash
./jkl.sh deploy
```

This will:
1. Regenerate category pages using `jekyll_taxonomy -c generate category`
2. Regenerate tag pages using `jekyll_taxonomy -c generate tag`
3. Stage all changes (posts, categories, tags, images, public assets, includes)
4. Copy VERSION.md to `_includes/version.html`
5. Run `setver autopatch` to increment version
6. Commit and push changes

**Required tools for deployment:**
- `jekyll_taxonomy` - Install via: `basher install pforret/jekyll_taxonomy`
- `setver` - Install via: `basher install pforret/setver`

### Other Commands

```bash
./jkl.sh check    # Check script configuration and required dependencies
./jkl.sh env      # Generate example .env file
./jkl.sh update   # Update jkl.sh to latest version via git pull
```

## Important Notes

- **Category/Tag pages are auto-generated** - Don't manually edit files in `category/` or `tag/`
- **Image organization** - Images follow WordPress convention: `wp-content/uploads/[YEAR]/[MONTH]/`
- **Posts are organized by year** - Each year has its own subdirectory in `_posts/`
- **Version tracking** - VERSION.md is automatically incremented on deploy and copied to `_includes/version.html`
- **Git workflow** - The deploy script handles all git operations (add, commit, version bump)

## Bash Script (jkl.sh)

The `jkl.sh` script is based on [bashew](https://github.com/pforret/bashew) framework and includes:
- Robust option parsing (flags, options, parameters)
- Logging to `log/` folder
- Temp files in `tmp/` folder
- Color-coded output with progress indicators
- Built-in help and tips

### Script Options

- `-h|--help` - Show usage
- `-q|--quiet` - No output
- `-v|--verbose` - Show debug messages
- `-f|--force` - No confirmation prompts
- `-l|--log_dir` - Log folder (default: log)
- `-t|--tmp_dir` - Temp folder (default: tmp)
- `-I|--image_dir` - Image folder (default: wp-content/uploads)
- `-P|--post_dir` - Posts folder (default: _posts)
- `-T|--template` - Post template (default: _drafts/_template.md)
- `-W|--WAIT` - Seconds to wait before browser launch (default: 30)
