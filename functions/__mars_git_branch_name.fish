function __mars_git_branch_name -d "Get current branch name"
    __mars_git_is_repo
    and begin
        command git symbolic-ref --short HEAD ^/dev/null

        or command git show-ref --head -s --abbrev | head -n1 ^/dev/null
    end
end
