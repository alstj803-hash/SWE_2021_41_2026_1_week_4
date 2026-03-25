FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    total = 0\n\
    index = 0\n\
    while(n != 1):\n\
        while (n != 0):\n\
            index += 1\n\
            if(index > 1000):\n\
                return False\n\
            num = n % 10\n\
            total += num **2\n\
            n //= 10\n\
        n = total\n\
        total = 0\n\
    return True\n\
print(isHappy(19))\n\
print(isHappy(2))"]