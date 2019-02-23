function __mars_git_is_dirty -d "Check if there are changes to tracked files"
    __mars_git_is_repo
    and not command git diff --no-ext-diff --quiet --exit-code
end
