module ShowParser (parseShow) where

import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Language
import qualified Text.ParserCombinators.Parsec.Token as P

parseShow :: String -> String

lexer = P.makeTokenParser emptyDef

parens = P.parens lexer

brackets = P.brackets lexer

braces = P.braces lexer

commaSep = P.commaSep lexer

whiteSpace = P.whiteSpace lexer

symbol = P.symbol lexer

identifier = P.identifier lexer

integer = P.integer lexer

stringLiteral = P.stringLiteral lexer

