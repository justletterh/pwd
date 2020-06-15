def gen(t)
    l=['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z','*', '"', "'", '.', '!', '?', '-', ',',' ']
    o=[]
    t.times{
        o.push "#{l.sample}"
    }
    return o.join ""
end
def main
    div='-'*50
    puts div
    puts 'how long do you want your password?:'
    len=gets
    puts div
    puts gen len.to_i
    puts div
end
main