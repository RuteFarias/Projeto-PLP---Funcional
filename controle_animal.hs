main :: IO ()
main = do

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


-- função que recebe uma String e retorna uma IO String
getString :: String -> IO String
getString str = do
			putStr str
			res <- getLine
			return res


-- função que exibe o Menu
menu :: Animais -> IO Animais 
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
		executarOpcao  op

-- função para manipular a opção escolhida pelo usuário

executarOpcao ::  Char -> IO Animais 
executarOpcao op '1' = cadastrarAnimal 
executarOpcao op '2' = atualizarAnimal 
executarOpcao op '3' = listarAnimais
executarOpcao op '4' = buscar
executarOpcao op '3' = fech-----------------------
executarOpcao op _ = do
				putStrLn ("\nOpção inválida!")
			
			
-- função que verifica se um animal existe (o id do animal é único)
existe_animal :: Animais -> Id -> Bool
existe_animal [] _ = False
existe_animal ((Animal n p):xs) id
			| (n == id) = True
			| otherwise = existe_animal xs nome



-- função responsável pelo cadastro de animais
cadastrarAnimal :: Animais -> IO Animais 
cadastrarAnimal = do
				id <- getInt "\nDigite id do animal: "
				if (existeAnimal id) then do
					putStrLn "\nEsse animal já existe"
					getChar
					menu dados
				else do
					
					
					tipo <- "\nDigite o tipo do animal: ";
					tamanho << "Digite o tamanho do animal: "
					genero<- "Digite o genero do animal: "
					cor <- "Digite o cor do animal: "					
					dono <- getString << "Digite o dono do animal: "
			    	obs <- getString "Digite as observacoes do animal: "


menu ((Jogador nome 0):dados) -- retorna a nova lista para o menu
