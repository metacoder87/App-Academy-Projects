def measure(cntr=1, &t)
    score = []
    cntr.times do
        go = Time.now
        t.call
        fin = Time.now
        score << fin - go
    end
    score.reduce(&:+)/cntr
end