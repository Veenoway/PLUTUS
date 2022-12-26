
-- | A 'Contract' that logs a message.
myFirstFunction :: Contract () EmptySchema T.Text ()
myFirstFunction = logInfo @Haskell.String "Hello, world"

endpoints :: Contract () EmptySchema T.Text ()
endpoints = myFirstFunction

type DummySchema = Endpoint "dummy" ()

mkSchemaDefinitions ''DummySchema

$(mkKnownCurrencies [])