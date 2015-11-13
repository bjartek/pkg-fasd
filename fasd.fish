function init --on-event init_fasd
  if not available fasd
    echo "🍒  Please install 'fasd' first!"
  else
    function -e fish_preexec _run_fasd
      fasd --proc (fasd --sanitize "$argv") > "/dev/null" 2>&1
    end

    function a
      fasd -a "$argv"
    end

    function s
      fasd -si "$argv"
    end

    function sd
      fasd -sid "$argv"
    end

    function sf
      fasd -sif "$argv"
    end

    function d
      fasd -d "$argv"
    end

    function f
      fasd -f "$argv"
    end

    function j
      cd (fasd -d -e 'printf %s' "$argv")
    end

    function z
      cd (fasd -d -e 'printf %s' "$argv")
    end

    function v
      vim (fasd -e 'printf %s' "$argv")
    end

    function o
      open (fasd  -e 'printf %s' "$argv")
    end

   function fa
    fasd -A "$argv"
   end

  end
end
