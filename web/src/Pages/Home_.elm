module Pages.Home_ exposing (page)

import Html as H
import Html.Attributes exposing (class)
import View exposing (View)


page : View msg
page =
    { title = "Wcond"
    , body =
        [ H.main_ [class "container"]
            [ H.section []
                [ H.h1 [] [ H.text "Wcond, anuncie, venda e gerencie seus imóveis" ]
                , H.button []  H.text "Entrar ou Criar Conta" ]
                ]
            , H.section []
                [ H.h1 [] [ H.text "Porque nosso produto pode te interessar." ]
                , H.ul []
                    [ H.li [] [ H.text "Cadastre seus imóveis e gerencie todas as informações em tempo real." ]
                    , H.li [] [ H.text "Gerencie seus inquilinos de forma rápida e centralizada." ]
                    , H.li [] [ H.text "Receba seus pagamentos de forma segura em até 24 horas, além de cobranças automatizadas após vencimento." ]
                    , H.li [] [ H.text "Receba ocorrências do que acontece em seus imóveis em um só lugar." ]
                    , H.li [] [ H.text "Anuncie seus imóveis disponíveis de forma rápida e chamativa." ]
                    , H.li [] [ H.text "Houve uma reclamação? Veja a ocorrência pelo site e pelas notificações do whatsapp." ]
                    ]
                ]
            ]
        ]
    }
