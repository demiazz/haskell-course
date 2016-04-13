## Типы данных - Синтаксис записей

### Задание

Определите тип записи, который хранит элементы лога. Имя конструктора должно совпадать с именем типа, и запись должна содержать три поля:

- `timestamp` — время, когда произошло событие (типа `UTCTime`);
- `logLevel` — уровень события (типа `LogLevel`);
- `message` — сообщение об ошибке (типа `String`).

Определите функцию `logLevelToString`, возвращающую текстуальное представление типа `LogLevel`, и функцию `logEntryToString`, возвращающую текстуальное представление записи в виде:

```
<время>: <уровень>: <сообщение>
```

Для преобразование типа `UTCTime` в строку используйте функцию `timeToString`.

### Исходный код

```
import Data.Time.Clock
import Data.Time.Format
import System.Locale

timeToString :: UTCTime -> String
timeToString = formatTime defaultTimeLocale "%a %d %T"

data LogLevel = Error | Warning | Info

data LogEntry = Undefined

logLevelToString :: LogLevel -> String
logLevelToString = undefined

logEntryToString :: LogEntry -> String
logEntryToString = undefined
```
