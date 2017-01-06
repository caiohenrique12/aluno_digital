User.create(email: 'admin@alunodigital.com.br', password: '123456', password_confirmation: '123456')

School.create(name: 'Farias Brito', cnpj: '616161151', active: true)

Unity.create(name: 'Unidade Centro', street: 'Rua Teste 1', number: '100', neighborhood: 'Teste 1', city: 'Fortaleza', state: 'CE', phone_1: '26665448', phone_2: '8949849', school_id: 1, active: true)
Unity.create(name: 'Unidade Baby', street: 'Rua Teste 2', number: '200', neighborhood: 'Teste 2', city: 'Fortaleza', state: 'CE', phone_1: '76665448', phone_2: '9949849', school_id: 1, active: true)
Unity.create(name: 'Unidade Sul', street: 'Rua Teste 3', number: '300', neighborhood: 'Teste 3', city: 'Fortaleza', state: 'CE', phone_1: '36665448', phone_2: '01949849', school_id: 1, active: true)
Unity.create(name: 'Principal', street: 'Rua Teste 4', number: '4100', neighborhood: 'Teste 4', city: 'Fortaleza', phone_1: '36665448', phone_2: '01949849', state: 'CE', school_id: 1, active: true)

Classroom.create(name: '1 ano A', turn: 1, unity_id: 1)
Classroom.create(name: '1 ano B', turn: 1, unity_id: 1)
Classroom.create(name: '1 ano C', turn: 1, unity_id: 1)
Classroom.create(name: '1 ano D', turn: 1, unity_id: 1)

Classroom.create(name: '1 ano A', turn: 1, unity_id: 2)
Classroom.create(name: '1 ano B', turn: 1, unity_id: 2)
Classroom.create(name: '1 ano C', turn: 1, unity_id: 2)
Classroom.create(name: '1 ano D', turn: 1, unity_id: 2)

Classroom.create(name: '1 ano A', turn: 1, unity_id: 3)
Classroom.create(name: '1 ano B', turn: 1, unity_id: 3)
Classroom.create(name: '1 ano C', turn: 1, unity_id: 3)
Classroom.create(name: '1 ano D', turn: 1, unity_id: 3)

Classroom.create(name: '1 ano D', turn: 1, unity_id: 4)
Classroom.create(name: '1 ano E', turn: 1, unity_id: 4)
Classroom.create(name: '1 ano F', turn: 2, unity_id: 4)
Classroom.create(name: '1 ano G', turn: 3, unity_id: 4)

Parent.create(name: 'Maria Lucia', cpf: '655.544.477-151', age: 45, sex: 2, street: 'Rua teste', number: '458', neighborhood: 'Teste', city: 'Fortaleza', state: 'CE', phone_1: '85 888888', phone_2: '85 98841654', active: true)
Parent.create(name: 'Pedro Paulo', cpf: '355.543.177-121', age: 40, sex: 1, street: 'Rua teste', number: '458', neighborhood: 'Teste', city: 'Fortaleza', state: 'CE', phone_1: '85 7777777', phone_2: '85 3333333', active: true)
Parent.create(name: 'Junior Silva', cpf: '155.144.174-111', age: 25, sex: 1, street: 'Rua teste 2', number: '58', neighborhood: 'Teste', city: 'Fortaleza', state: 'CE', phone_1: '85 999999', phone_2: '85 94444444', active: true)
Parent.create(name: 'Bruna Silva', cpf: '055.044.077-051', age: 29, sex: 2, street: 'Rua teste 3', number: '48', neighborhood: 'Teste', city: 'Fortaleza', state: 'CE', phone_1: '85 5665656', phone_2: '85 33333331', active: true)
Parent.create(name: 'Ricardo Maia', cpf: '255.244.277-251', age: 50, sex: 1, street: 'Rua teste 2', number: '411', neighborhood: 'Teste', city: 'Fortaleza', state: 'CE', phone_1: '85 3213131', phone_2: '85 113213213', active: true)
