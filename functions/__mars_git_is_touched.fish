function __mars_git_is_touched -d "Check if repo has any changes"
    __mars_git_is_repo
    and begin
        test -n (echo (command git status --porcelain))
    end
end
