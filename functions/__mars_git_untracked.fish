function __mars_git_untracked -d "Print list of untracked files"
    __mars_git_is_repo
    and begin
        command git ls-files --other --exclude-standard
    end
end
