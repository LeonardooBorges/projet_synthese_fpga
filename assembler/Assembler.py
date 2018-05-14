OPcode = {'sll':'000000','srl':'000000','jr':'000000',
        'add':'000000','sub':'000000','and':'000000',
        'or':'000000','nor':'000000','slt':'000000',
        'mult':'000000','div':'000000',
        'j':'000010','jal':'000011','beq':'000100',
        'bne':'000101','addi':'001000','slti':'001010',
        'andi':'001100','ori':'001101','xori':'001110',
        'lb':'100000','lw':'100011','lbu':'100100',
        'sw':'101011','sb':'101000'
        }

Funct = {'sll':'000000','srl':'000010','jr':'001000',
        'add':'100000','sub':'100010','and':'100100',
        'or':'100101','nor':'100111','slt':'101010',
        'mult':'011000','div':'011010'
        }

Registers = {'$zero':0,'$at':1,'$v0':2,'$v1':3,'$a0':4,
        '$a1':5,'$a2':6,'$a3':7,'$t0':8,'$t1':9,'$t2':10,
        '$t3':11,'$t4':12,'$t5':13,'$t6':14,'$t7':15,
        '$s0':16,'$s1':17,'$s2':18,'$s3':19,'$s4':20,
        '$s5':21,'$s6':22,'$s7':23,'$t8':24,'$t9':25,
        '$k0':26,'$k1':27,'$gp':28,'$sp':29,'$fp':30,
        '$ra':31
        }

for r in Registers:
    Registers[r] = '{0:05b}'.format(Registers[r])

TypeR=['sll','srl','jr','add','sub','and','or','nor','slt']
TypeI=['beq','bne','addi','slti','andi','ori',
        'xori','lb','lw','lbu','sw','sb']
TypeJ=['j','jal']

with open('code.asm') as f:
    code = f.readlines()
code = [x.strip() for x in code] 

addr = 0

Labels = {}

for line in code:
    binary = ''
    tmp = line.split()
    if line and tmp[0] not in TypeR and tmp[0] not in TypeI and tmp[0] not in TypeJ:
        Labels[tmp[0][:-1]] = addr
    elif line:
        binary += OPcode[tmp[0]]
        tmp1 = tmp[1].split(',')
        if tmp[0] in TypeR:
            if tmp[0] in ['sll','srl']:
                binary += '00000'
                binary += Registers[tmp1[1]]
                binary += Registers[tmp1[0]]
                binary += '{0:05b}'.format(int(tmp1[2]))
            elif tmp[0]=='jr':
                binary += Registers[tmp1[0]]
                binary += '0000000000'
                binary += '00000'
            else:
                binary += Registers[tmp1[1]]
                binary += Registers[tmp1[2]]
                binary += Registers[tmp1[0]]
                binary += '00000'
            binary += Funct[tmp[0]]
        elif tmp[0] in TypeI:
            if tmp[0] in ['beq','bne']:
                binary += Registers[tmp1[0]]
                binary += Registers[tmp1[1]]
                if tmp1[2] in Labels:
                    binary += '{0:016b}'.format(Labels[tmp1[2]])
                else:
                    binary += '{0:016b}'.format(int(tmp1[2]))
            elif tmp[0] in ['addi','slti','andi','ori','xori']:
                binary += Registers[tmp1[1]]
                binary += Registers[tmp1[0]]
                binary += '{0:016b}'.format(int(tmp1[2]))
            else:
                tmp2 = tmp1[1].split('(')
                binary += Registers[tmp2[1][:-1]]
                binary += Registers[tmp1[0]]
                binary += '{0:016b}'.format(int(tmp2[0]))
        elif tmp[0] in TypeJ:
            if tmp1[0] in Labels:
                binary += '{0:026b}'.format(Labels[tmp1[0]])
            else:
                binary += '{0:026b}'.format(int(tmp1[0]))
        print(binary)
        addr+=4

