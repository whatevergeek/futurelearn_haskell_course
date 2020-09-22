-- make people noble

-- version 1
-- mknoble :: String -> String
-- mknoble name = "Sir " ++ name

-- version 2
mknoble :: Bool -> String -> String
mknoble female name = (if female then "Dame " else "Sir ")
                      ++ name
