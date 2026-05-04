import time

lights = [
    ('Green', 2),
    ('Yellow', 1),
    ('Red', 3)
]
i = 0
while True:
    c,s = lights[i]
    print(c)
    time.sleep(s)
 #   i = (i + 1) % len(lights)
    time.sleep(s)
    if i== len(lights)-1:
        i=0
    else:
        i+=1


# import time
# import itertools 
# import cycle

# lights = [
#     ('Green', 2),
#     ('Yellow', 1),
#     ('Red', 3)
# ]
# colors = cycle(lights)
# while True:
#     c, s = next(colors)
#     print(c)
#     time.sleep(s)


# lights = [
#     ('Green', 2),
#     ('Yellow', 0.5),
#     ('Red', 2)
# ]

# for c, s in itertools.cycle(lights):
#     print(c)
#     time.sleep(s)