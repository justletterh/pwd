d={'a':'Alpha', 'b':'Bravo', 'c':'Charlie', 'd':'Delta', 'e':'Echo', 'f':'Foxtrot', 'g':'Golf', 'h':'Hotel', 'i':'India', 'j':'Juliett', 'k':'Kilo', 'l':'Lima', 'm':'Mike', 'n':'November', 'o':'Oscar', 'p':'Papa', 'q':'Quebec', 'r':'Romeo', 's':'Sierra', 't':'Tango', 'u':'Uniform', 'v':'Victor', 'w':'Whiskey', 'x':'X-ray', 'y':'Yankee', 'z':'Zulu',' ':'Space','1':'One','2':'Two','3':'Three','4':'Four','5':'Five','6':'Six','7':'Seven','8':'Eight','9':'Nine','0':'Zero','*':'Asterik','"':'Double-Quote',"'":'Quote','.':'Period','!':'Exclemation-Mark','?':'Question-Mark','-':'Hyphen',',':'Comma'}
def encode(s):
    o=[]
    for char in s:
        if char.lower()==char:
            o.append(d[f'{char.lower()}'])
        else:
            o.append(f'Capital-{d[str(char.lower())]}')
    return ', '.join(o)
def decode(s):
    rd={value : key for (key, value) in d.items()}
    o=[]
    s=s.split(', ')
    for i in s:
        if not i.startswith('Capital-'):
            o.append(rd[f'{i}'])
        else:
            o.append(rd[f'{i.replace("Capital-","")}'].upper())
    return ''.join(o)
def main():
    div='-'*50
    one=input(f"{div}\ntype '1' to encode or '2' to decode:\n")
    if one=='1':
        print(f"you chose to encode\n{div}\n")
        inp=input('what would you like to encode?:')
        print(f'{div}\nResult:')
        print((encode(inp)))
    elif one=='2':
        print(f"you chose to decode\n{div}")
        inp=input('what would you like to decode?:\n')
        print(f'{div}\nResult:')
        print((decode(inp)))
    else:
        print("invalid value")
    print(div)
main()