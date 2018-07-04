

-- definição dos tipos dos dados

type Id = Int
type Tamanho = String
type Genero = String
type Cor = String
type Tipo = String
type Dono = String
type Obs = String
data Animal = Id Tamanho Genero Cor Tipo Dono Obs
type Animais = [Animal]
					deriving (Show, Read)




-- função que exibe o Menu
menu :: Jogadores -> IO Jogadores
menu dados = do

		putStrLn "-------------------------------- Controle de Animais --------------------------------"
		putStrLn "Escolha uma opção "
		putStrLn "1 - Cadastrar Animal"
		putStrLn "2 - Atualizar Animal"
		putStrLn "3 - Listar Animais" 
		putStrLn "4 - Buscar" 
		putStrLn "5 - Fechar programa" 
		putStrLn "Digite sua opcao: "

		putStr "Opção: "
		op <- getChar
		getChar -- descarta o Enter
		executarOpcao dados op



-- função que verifica se um animal existe (o id do animal é único)
existe_animal :: Animais -> Id -> Bool
existe_animal [] _ = False
existe_animal ((Animal n p):xs) id
			| (n == id) = True
			| otherwise = existe_animal xs nome
