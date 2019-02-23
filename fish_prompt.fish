function fish_prompt
    set -l last_status $status

    set_color white
    echo -n (whoami)

    set_color red
    echo -n '@'
    echo -n (hostname)" "

    set_color green
    echo -n (prompt_pwd)

    if __mars_git_is_repo
        set_color white
        echo -n " ("
        if __mars_git_is_dirty
            or __mars_git_is_touched
            set_color red
        else if __mars_git_is_staged
            set_color green
        end

        echo -n (__mars_git_branch_name)
        echo -n (__mars_git_ahead)
        set_color white
        echo -n ")"
    end

    if test -e package.json
        set_color green
        echo -n " $mfizz_nodejs ("(node -v)")"
    end

    if not test $last_status -eq 0
        set_color $fish_color_error
        echo -n " [$last_status]"
    end

    set_color red
    if [ (whoami) = "root" ]
        printf "\n%s " (echo -n "#")
    else
        printf "\n%s " (echo -n " $firacode_equal_greater")
    end
    set_color normal
end
