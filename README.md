# Wcond

Sistema de gerenciamento de condomínio para pequeno e médio empreendedor.

Requisitos

Criar um sistema onde seja possível:

- Registrar um ou mais imóveis da posse de um proprietário
- Registrar propriedades de uma moradia
    - Tamanho geral
    - Número de Cômodos e seus tamanhos
        - Sala de estar
        - Cozinha
        - Quartos
        - Banheiro(s)
    - Preço
    - Observações

- Gerenciar contas dos imóveis
- Cadastrar e gerenciar inquilinos
- Gerenciar recebimento de aluguéis
- Registrar ocorrências dos inquilinos
    - Falta de água
    - Solicitações
    - Reclamações
- Receber notificações sobre ocorrências via Email e Whatsapp
- Página própria do imóvel
    - Mostrar informações e imagens do imóvel
    - Mostrar avaliações dos inquilínos atuais (o)
    - Mostrar avaliações de antigos inquilinos (o)
    - Contato do proprietário para negociar

## Entidades
```Odin
Endereço :: Estado, Cidade, Bairro, Rua, Número, Complemento

Dimensões :: Altura, Largura, Comprimento

Pessoa :: {
    Nome
    CPF/CNPJ
    Telefone
    Email
}

Proprietário :: {
    Pessoa
    Endereço
}


Inquilino :: {
    Pessoa
    Moradia
}

Mensalidade :: {
    Inquilino
    Valor
    Data de Expiração
}

Ocorrência :: {
    Tipo
    Solicitante
    Data
}

Condomínio :: {
    Endereço
    Moradia
}

Moradia :: {
    Quarto
    Sala
    Banheiro
    Lavanderia
    Contas
    Preço
}

Casa :Moradia: {
    Endereço
}

Contas :: Água, Luz, Internet
Quarto :: Dimensões, Janela, Banheiro
Banheiro, Sala, Cozinha :: Dimensões
Banheiro :: Banheira, Box
Sala :: Móveis
Cozinha :: Móveis
Móveis :: TV, Estante, Sofá, Poltrona, Cadeira
```
