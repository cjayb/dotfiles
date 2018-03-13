conda_select_env ()
{
    ENVLIST=(`conda env list --json`)
    if [ $# -ge 1 ]; then
        enum=$1 # if you already know the number...
    else
        echo "----------------------"
        echo "Available environments"
        echo "----------------------"
        ii=0
        for e in ${ENVLIST[@]}; do
          if [[ $e == *'/'* ]]; then
            let ii+=1
            foo=${e%,}; foo=${foo%\"}; foo=${foo#\"};
            ENVNAMES[ii]=`basename $foo`
            echo $ii: ${ENVNAMES[ii]}
          fi
        done
        echo -n "Select environment [1-$ii]: "
        read enum
    fi
    if [ $enum -gt ${#ENVLIST[@]} ]; then
        echo "Environment number too large, what are you trying to do?"
        return 1
    fi
    # for conda>=4.4
    echo "conda activate ${ENVNAMES[$(($enum))]}"
    eval "conda activate ${ENVNAMES[$(($enum))]}"
}
