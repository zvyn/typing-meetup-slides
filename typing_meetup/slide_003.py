# type: ignore

a = "5"
a = int(a)
a += 1.0
assert type(a) is float, "this_is_fine.jpg"

i = None
while not i:
    i += 1


def hello():
    return b" ".join(["hello", "world"])


class Duck:
    def quack(self):
        print("Quack!")


duck = Duck()
print(duck.quck())
