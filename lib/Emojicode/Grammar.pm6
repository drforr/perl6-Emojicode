grammar Emojicode::Grammar
	{
		token Number
			{
			| '-'? <[ 1 .. 9 ]> <[ 0 .. 9 _ ]>* '.'  <[ 0 .. 9 ]>+
			| '-'? '0' '.' <[ 0 .. 9 ]> <[ 0 .. 9 _ ]>*
			| '-'? <[ 1 .. 9 ]> <[ 0 .. 9 _ ]>*
			| '-'? '0'
			}

		token Variable
			{
			| <[ a .. z A .. Z ]> <[ a .. z A .. Z 0 .. 9 ]>*
			}

		token String
			{
			| '🔤' <-[ 🔤 ]>* '🔤'
			}

		token Documentation
			{
			| '🌮' <-[ 🌮 ]>* '🌮'
			}

		token List
			{
			| '🍪' ' '? [ [ <String> | '🔡' \s* <Variable> | <Variable> | <Number> ]+ %% \s+ ] ' '? '🍪'
			}

		token ListLiteral
			{
			| '🍨' ' '? [ <String> ]+ %% \s+ '🍆' # XXX
			}

		token Comment
			{
			| '👴' <-[ \n ]>*
			}

		token SymbolLiteral
			{
			| '🔟' .
			}

		token Expression
			{
			| <String>
			| <List>
			| <Variable>
			}

		token Print-Statement
			{
			| '😀' \s+ <Expression>
			}

		token TOP
			{
# tests/compilation/protocolSubclass.emojic
#
'🐊 💡 🍇
  🐖 🔦 ' <Variable> ' 🚀
🍉

🐊 📞 🍇
  🐖 📞 ' <Variable> ' 🔡
  🐖 🔙 ➡️ 🔡
🍉

🐇 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 😷 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 ⌚️  📱 🍇
  ✒️ 🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 ' <Variable> ' 💡 🍇
    🔦 ' <Variable> ' ' <Number> '
  🍉

  🐇🐖 📞 ' <Variable> ' 📞 🍇
    📞 ' <Variable> ' ' <String> '
    😀 🔙' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷📱🆕

  🍩💡🥊 ' <Variable> '
  🍩📞🥊 ' <Variable> '
  🍩📞🥊 🔷☎️🆕
  🍩💡🥊 🔷🔦🆕
  🍩📞🥊 🔷⌚️🆕
  🍩💡🥊 🔷⌚️🆕
🍉
'
|
# tests/compilation/protocolValueTypeRemote.emojic
#
'🐊 💷 🍇
  🐖 😀
🍉

🕊 🍕 🍇
  🐊 💷

  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 👌

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 👌 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      ' <Print-Statement> '
    🍉
    🍊 ' <Variable> ' 🍇
      ' <Print-Statement> '
    🍉
    🍊 ' <Variable> ' 🍇
      ' <Print-Statement> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍕🆕 ' <String> ' ' <ListLiteral> ' 👍 👍
  🍰 ' <Variable> ' 💷
  🍮 ' <Variable> ' ' <Variable> '
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/if.emojic
#
'🏁 🍇
  🍊 👍 🍇
    ' <Print-Statement> '
  🍉

  🍊 👎 🍇
    ' <Print-Statement> '
  🍉

  🍊 👍 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 👎 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 👍 🍇
    ' <Print-Statement> '
  🍉
  🍋 👍 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 👎 🍇
    ' <Print-Statement> '
  🍉
  🍋 👍 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 👎 🍇
    ' <Print-Statement> '
  🍉
  🍋 👎 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 👎 🍇
    ' <Print-Statement> '
  🍉
  🍋 👎 🍇
    ' <Print-Statement> '
  🍉
  🍋 👍 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 👍 🍇
    ' <Print-Statement> '
  🍉
  🍋 👎 🍇
    ' <Print-Statement> '
  🍉
  🍋 👍 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 👎 🍇
    ' <Print-Statement> '
  🍉
  🍋 👎 🍇
    ' <Print-Statement> '
  🍉
  🍋 👎 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/protocolGenericLayerValueType.emojic
#
'🐊 📠🐚' <Variable> '⚪️ 🍇
  🐖 ⏱ ' <Variable> ' ' <Variable> '
  🐖 🚚 ➡️ ' <Variable> '
🍉

🕊 🍔 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      ' <Print-Statement> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🕊 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🚂 🍇
    ' <Print-Statement> '
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🕊 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🍔 🍇
    ' <Print-Statement> '
    ' <Print-Statement> '
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 ' <String> ' ' <ListLiteral> '
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 📠🐚🚂
  🍮 ' <Variable> ' 🔷🏨🆕

  ⏱ ' <Variable> ' ' <Number> '
  😀🔡 🚚 ' <Variable> ' ' <Number> '

  🍰 ' <Variable> ' 📠🐚🍔
  🍮 ' <Variable> ' 🔷🏣🆕

  ⏱ ' <Variable> ' 🔷🍔🆕 ' <String> ' ' <ListLiteral> '
  😀 🚚 ' <Variable> '
🍉
'
|
# tests/compilation/sequenceTypes.emojic
#
'🌍 🐇 🤘🏻 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🌍 🐇 🤘🏿 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🌍 🐇 🇦🇹 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉


🌍 🐇 🇦🇺 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🌍 🐇 👨‍👩‍👦‍👦 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🌍 🐇 👨‍👩‍👧‍👧 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🙋🔷🤘🏻🆕
  🙋🔷🤘🏿🆕
  🙋🔷🇦🇹🆕
  🙋🔷🇦🇺🆕
  🙋🔷👨‍👩‍👦‍👦🆕
  🙋🔷👨‍👩‍👧‍👧🆕
🍉
'
|
# tests/compilation/closureCapture.emojic
#
'🐇 🍤 🍇
  🐇🐖 🙋 ' <Variable> ' 🔡 ➡️ 🍇🚂➡️🔡🍉 🍇
    🍎 🍇 ' <Variable> ' 🚂 ➡️ 🔡
      🍊 😛 ' <Variable> ' ' <Number> ' 🍇
        🍎 ' <List> '
      🍉
      🍎 ' <List> '
    🍉
  🍉

  ' <Comment> '
  🐇🐖 👌🏾 ' <Variable> ' 🔡 ' <Variable> ' 🚂 ' <Variable> ' 🔡 ' <Variable> ' 🚀 ➡️ 🍇➡️🔡🍉 🍇
    🍊 ⬅️ ' <Variable> ' ' <Number> ' 🍇
      🍎 🍇 ➡️🔡 🍎 ' <List> ' 🍉
    🍉
		🍎 🍇 ➡️🔡 🍎 ' <List> ' 🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍩🙋🍤 ' <String> '
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '

  🍦 ' <Variable> ' 🍩🙋🍤 ' <String> '
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '

	🍦 ' <Variable> ' 🍩👌🏾🍤 ' <String> ' ' <Number> '	' <String> ' ' <Number> '
	😀 🍭 ' <Variable> '

	🍦 ' <Variable> ' 🍩👌🏾🍤 ' <String> ' ' <Number> ' ' <String> ' ' <Number> '
	😀 🍭 ' <Variable> '
🍉
'
|
# tests/compilation/valueType.emojic
#
'🕊 🌼 🍇
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🔡 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' ➕ ' <Variable> ' ' <Number> '
  🍉

  🐖 😀 🍇
    ' <Print-Statement> '
    😀 🔡 ' <Variable> ' ' <Number> '
  🍉
🍉

🕊 🌸 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇

  🍉

  🐖 🤣 ➡️ 🔡 🍇
    🍎 ' <Variable> '
  🍉
🍉

🕊 💐 🍇
  🍰 ' <Variable> ' 🌼
  🍰 ' <Variable> ' 🌸

  🐈 🆕 name 🔡  🍇
    🍮 ' <Variable> ' 🔷🌸🆕 ' <Variable> '
    🍮 ' <Variable> ' 🔷🌼🆕 ' <List> ' ' <Number> '
  🍉

  🐖 🍐 ➡️ 🔡 🍇
    🍎 🤣 ' <Variable> '
  🍉

  🐖 🌼 ➡️ 🌼 🍇
    🍎 ' <Variable> '
  🍉
🍉

🕊 ⚖️ 🍇
  🍰 ' <Variable> ' 🌼
  🍰 ' <Variable> ' 🌼

  🐈 🆕 🍼 ' <Variable> ' 🌼 🍼 ' <Variable> ' 🌼 🍇🍉

  🐖 🌗 ➡️ 🌼 🍇
    🍎 ' <Variable> '
  🍉

  🐖 🌓 ➡️ 🌼 🍇
    🍎 ' <Variable> '
  🍉
🍉

🕊 🌷 🍇
  🍰 ' <Variable> ' 💐
  🍰 ' <Variable> ' 🌼

  🐈 🆕 ' <Variable> ' 🔡 🍇
    🍮 ' <Variable> ' 🔷⚫️🆕 ' <Variable> '
    🍮 ' <Variable> ' 🔷⚫️🆕 ' <String> ' ' <Number> '
  🍉

  🐖 🥐 ➡️ 🔡 🍇
    🍎 🍐 ' <Variable> '
  🍉

  🐖 🌼 ➡️ ⚖️ 🍇
    🍎 🔷⚫️🆕 ' <Variable> ' 🌼 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🌼🆕 ' <String> ' ' <Number> '
  🍦 ' <Variable> ' 🔷🌸🆕 ' <String> '
  ' <Print-Statement> '
  😀 🤣 ' <Variable> '

  😀 🍐 🔷💐🆕 ' <String> '
  🍦 ' <Variable> ' 🔷💐🆕 ' <String> '
  😀 🍐 ' <Variable> '
  😀 🌼 ' <Variable> '

  🍦 ' <Variable> ' 🔷🌷🆕 ' <String> '
  😀 🥐 ' <Variable> '
  🍦 ' <Variable> ' 🌼 ' <Variable> '
  😀 🌗 ' <Variable> '
  😀 🌓 ' <Variable> '
🍉
'
|
# tests/compilation/genericsValueType.emojic
#
'🕊 🎁 🐚 ' <Variable> ' 🔵 🍇

  🍰 ' <Variable> ' ' <Variable> '

  🐈 ✂️ =etwas ' <Variable> ' 🍇
    🍮 ' <Variable> ' =etwas
  🍉

  🐖 🎉 ➡️  ' <Variable> ' 🍇
    🍎 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷 🎁🐚🔡 ✂️ ' <String> '

  😀 🎉 ' <Variable> '
🍉
'
|
# tests/compilation/errorAvocado.emojic
#
'🦃 🏜 🍇
  🔘🔋
  🔘🍟

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷🏜🔋 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷🏜🍟 🍇
      🍎 ' <String> '
    🍉
    🍎 ' <String> '
  🍉
🍉

🐇 🐟 🍇
  🐇🐖 🙅 ➡️ 🚨🏜🔡 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋 ➡️ 🚨🏜🔡 🍇
    🍎 ' <String> '
  🍉

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🍟
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🍎 ' <String> '
  🍉
🍉

🏁 🍇
  🥑 ' <Variable> ' 🍩🙋🐟 🍇
    ' <Print-Statement> '
  🍉
  🍓 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉

  🥑 ' <Variable> ' 🍩🙅🐟 🍇
    ' <Print-Statement> '
  🍉
  🍓 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉

  🥑 ' <Variable> ' 🍩🙅‍♂️🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  🍓 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉

  🥑 ' <Variable> ' 🍩🙋‍♂️ 🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  🍓 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/gcStressTest1.emojic
#
'🐇 😇 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' ' <List> '
  🍉

  🐖 🦆 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🤣 🍇
	🍰 ' <Variable> ' 😇

  🐈 🆕 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' 🔷😇🆕 ' <Variable> '
  🍉

  🐖 🦆 🍇
    🦆 ' <Variable> '
  🍉
🍉

🐇 🍗 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡

  🐈 🆕 🍇
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍨🔷🤣🆕 ' <Number> '🍆
  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 _ 🔷🍗🆕
    🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🐻 ' <Variable> ' 🔷🤣🆕 ' <Variable> '
    🍉
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    🦆 ' <Variable> '
  🍉
🍉
'
|
# tests/compilation/gcStressTest4.emojic
#
'🕊 😇 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' ' <List> '
  🍉

  🐖 🦆 🍇
    ' <Print-Statement> '
  🍉
🍉

🕊 🤣 🍇
	🍰 ' <Variable> ' 😇

  🐈 🆕 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' 🔷😇🆕 ' <Variable> '
  🍉

  🐖 🦆 🍇
    🦆 ' <Variable> '
  🍉
🍉

🐇 🍗 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡

  🐈 🆕 🍇
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍨🔷🤣🆕 ' <Number> '🍆
  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 _ 🔷🍗🆕
    🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🐻 ' <Variable> ' 🔷🤣🆕 ' <Variable> '
    🍉
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    🦆 ' <Variable> '
  🍉
🍉
'
|
# tests/compilation/hello.emojic
#
'🏁 🍇
  ' <Print-Statement> '
  ' <Print-Statement> '
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/piglatin.emojic
#
'🐋 🔡 🍇
  🐖 🐷 ➡️ 🔡 🍇
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' ' <Number> '
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' 🐔 🐕
    🍎 ' <List> '
  🍉
🍉

🏁 🍇
  😀 🐷 ' <String> '
  😀 🐷 ' <String> '
  😀 🐷 ' <String> '
🍉
'
|
# tests/compilation/protocolEnum.emojic
#
'🐊 🇨🇭 🍇
  ' <Documentation> '
  🐖 🇨🇭 ➡️ 🔡
🍉

🦃 🍴 🍇
	🐊 🇨🇭

  🔘🍫
  🔘🍭
  🔘🥐

  🐖 🇨🇭 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷🍴🍫 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷🍴🍭 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷🍴🥐 🍇
      🍎 ' <String> '
    🍉
    🍎 ' <String> '
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 🇨🇭 swissGermanDescribable 🇨🇭 🍇
    😀 🇨🇭 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍩🇨🇭🥊 🔷🍴🍫
	🍩🇨🇭🥊 🔷🍴🥐
🍉
'
|
# tests/compilation/enum.emojic
#
'🦃 🏷 🍇
  🔘🏁
  🔘🚧
  🔘📜
🍉

🏁 🍇
	🍦 ' <Variable> ' 🔷🏷🏁
	🍦 ' <Variable> ' 🔷🏷🏁
  🍦 ' <Variable> ' 🔷🏷🚧
  🍦 ' <Variable> ' 🔷🏷📜
  🍦 ' <Variable> ' 🔷🏷📜

	🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
		' <Print-Statement> '
	🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/genericProtocol.emojic
#
'🐊 🦀🐚' <Variable> '⚪️🐚' <Variable> '⚪️ 🍇
	🐖 🦀 ' <Variable> ' ' <Variable> ' ➡️ ' <Variable> '
🍉

🐇 🐾 🐚' <Variable> '⚪️ 🍇
	🐊 🦀🐚🔡🐚' <Variable> '

	🐈 🆕 🍇

	🍉

	🐖 🦀 ' <Variable> ' 🔡 ➡️ ' <Variable> ' 🍇
		🍎 ' <Number> '
	🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 🦀🐚🔡🐚🚂
  🍮 ' <Variable> ' 🔷🐾🐚🚂🆕

  😀 🔡 🦀 ' <Variable> ' ' <String> ' ' <Number> '
🍉
'
|
# tests/compilation/included.emojic
#
'🕊 🐤 🍇
  🐇🐖 💐 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/downcastClass.emojic
#
'🐇 🐟 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 🔵
  🍮 ' <Variable> ' 🔷🐟🆕 ' <String> '
  🍰 ' <Variable> ' 🔵
  🍮 ' <Variable> ' ' <String> '
  🍰 ' <Variable> ' 🐟
  🍮 ' <Variable> ' 🔷🐡🆕

  🙋 🍺 🔲 ' <Variable> ' 🐟
  😀 🍺 🔲 ' <Variable> ' 🔡
  🥛 🍺 🔲 ' <Variable> ' 🐡

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🔡  🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/repeatWhile.emojic
#
'🏁 🍇
  🍮 ' <Variable> ' ' <Number> '

  🔁 ◀️ ' <Variable> ' ' <Number> ' 🍇
    😀 🔡 ' <Variable> ' ' <Number> '
    🍮➕ ' <Variable> ' ' <Number> '
  🍉
🍉
'
|
# tests/compilation/class.emojic
#
'🐇 😮 🍇
	🐇🐖 🐸 ' <Variable> ' 🔡 ➡️ 😮 🍇
		🍎 🔷 🐕 🆕
	🍉

	🔑 🐈 🆕 🍇
		' <Print-Statement> '
	🍉

🍉

🐇 😴 😮 🍇

	🔑 🐈 🤗 🍇
		' <Print-Statement> '
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		' <Print-Statement> '
		🐐 🆕
	🍉

🍉

🐇 👮 😴 🍇

	🐈 😵 🍇
		' <Print-Statement> '
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		' <Print-Statement> '
		🐐 🆕
	🍉

	🔑 🐈 🤗 🍇
		' <Print-Statement> '
		🐐 🆕
	🍉

	🐈 🤐 🍇
		' <Print-Statement> '
		🐐 🆕
	🍉

🍉

🏁 🍇
	🍩🐸😮 ' <String> '
	🍩🐸😴 ' <String> '
	🍩🐸👮 ' <String> '
🍉
'
|
# tests/compilation/reflection.emojic
#
'🐇 🐟 🍇
  🔑 🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐋 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐠 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍨🔳🐟 🔳🐡 🔳🐋 🔳🐠  🍆
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    🍦 ' <Variable> ' 🔷⬛️ ' <Variable> ' 🆕
    🙋 ' <Variable> '
  🍉
🍉
'
|
# tests/compilation/threads.emojic
#
'🐇 🏦 🍇
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍇
    🍮 ' <Variable> ' ' <Number> '
  🍉

  🐖 💸 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' ➖ ' <Variable> ' ' <Variable> '
  🍉

  🐖 💶 ➡️ 🚂 🍇
    🍎 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍨🐚💈🐸

  🍦 ' <Variable> ' 🔷🏦🆕

  🍦 ' <Variable> ' 🔷🔐🆕

  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    🐻 ' <Variable> ' 🔷💈🆕 🍇
      🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
        🔒 ' <Variable> '
        🍊 ➡️ 💶 ' <Variable> ' ' <Number> ' 🍇
          ' <Print-Statement> '
          💸 ' <Variable> ' ' <Number> '
        🍉
        🔓 ' <Variable> '
      🍉
    🍉
  🍉

  🔂 ' <Variable> ' ' <Variable> ' 🍇
    🛂 ' <Variable> '
  🍉

  😀 🔡 💶 ' <Variable> ' ' <Number> ' ' <Comment> '
🍉
'
|
# tests/compilation/closureCaptureThis.emojic
#
'🐇 🕵 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🐑 @name 🔡 🍇
    🍮 ' <Variable> ' @name
  🍉

  🐖 🏷 ' <Variable> ' 🔡 🍇
    🍮 ' <Variable> ' ' <Variable> '
  🍉

  🐖 💳 ➡️ 🍇➡️🔡🍉 🍇
    🍎 🍇 ➡️ 🔡
      🍎 ' <Variable> '
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🕵🐑 ' <String> '
  🍦 ' <Variable> ' 💳 ' <Variable> '

  😀 🍭 ' <Variable> '

  🏷 ' <Variable> ' ' <String> '

  😀 🍭 ' <Variable> '

  🏷 ' <Variable> ' ' <String> '

  😀 🍭 ' <Variable> '
🍉
'
|
# tests/compilation/namespace.emojic
#
'📦 s 💊

🐇 🔶🎅🎁 🍇
  🐇🐖 🙂 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍩🙂🔶🎅🎁
  🍰 ' <Variable> ' 🍨🐚🔡
  🍮 ' <Variable> ' 🔷🔶💊🍨🐚🔡🐸
  😀 🔡 🐔 ' <Variable> ' ' <Number> '
🍉
'
|
# tests/compilation/protocolClass.emojic
#
'🐊 💡 🍇
  🐖 🔦 ' <Variable> ' 🚀
🍉

🐊 📞 🍇
  🐖 📞 ' <Variable> ' 🔡
  🐖 🔙 ➡️ 🔡
🍉

🐇 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 😷 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 ' <Variable> ' 💡 🍇
    🔦 ' <Variable> ' ' <Number> '
  🍉

  🐇🐖 📞 ' <Variable> ' 📞 🍇
    📞 ' <Variable> ' ' <String> '
    😀 🔙' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷📱🆕

  🍩💡🥊 ' <Variable> '
  🍩📞🥊 ' <Variable> '
  🍩📞🥊 🔷☎️🆕
  🍩💡🥊 🔷🔦🆕
🍉
'
|
# tests/compilation/includer.emojic
#
'📜 ' <String> '

🏁 🍇
  🍩💐🐤
🍉
'
|
# tests/compilation/castGenericValueType.emojic
#
'🕊 🥛🐚 ' <Variable> ' ⚪️ 🍇
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' ' <Variable> '

  🐈 🆕 🍼 ' <Variable> ' ' <Variable> ' 🍇
    🍮' <Variable> ' 👎
  🍉

  🐖 🥔 ➡️ ' <Variable> ' 🍇
    🍎 ' <Variable> '
  🍉
🍉

🕊 🦑🐚 ' <Variable> ' ⚪️ 🍇
  🍰 ' <Variable> ' ' <Variable> '
  🍰 ' <Variable> ' ' <Variable> '

  🐈 🆕 🍼 ' <Variable> ' ' <Variable> ' 🍼 ' <Variable> ' ' <Variable> ' 🍇🍉

  🐖 👈 ➡️ ' <Variable> ' 🍇
    🍎 ' <Variable> '
  🍉

  🐖 👉 ➡️ ' <Variable> ' 🍇
    🍎 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🥛🐚🚂🆕 ' <Number> '
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🥛🐚🔡🆕 ' <String> '

  😀 🔡 🥔 🍺 🔲 ' <Variable> ' 🥛🐚🚂 ' <Number> '
  😀 🥔 🍺 🔲 ' <Variable> ' 🥛🐚🔡

  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🦑🐚🔡🆕 ' <String> ' ' <String> '

  😀 👈 🍺 🔲 ' <Variable> ' 🦑🐚🔡
  😀 👉 🍺 🔲 ' <Variable> ' 🦑🐚🔡

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥛🐚🔡 🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥛🐚🚂 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/valueTypeRemoteAdditional.emojic
#
'🕊 🏠 🍇
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 😀 🍇
    ' <Print-Statement> '
    ' <Print-Statement> '
    ' <Print-Statement> '
    ' <Print-Statement> '
    ' <Print-Statement> '
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🏠🆕 ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> '
  ' <Print-Statement> '

  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🏠🆕 ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> '

  🍰 ' <Variable> ' 🍬🏠
  🍮 ' <Variable> ' 🔲 ' <Variable> ' 🏠
  😀🍺' <Variable> '

  🍮 ' <Variable> ' 🔷🏠🆕 ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> '
  🍮 ' <Variable> ' ' <Variable> '
  😀🍺🔲 ' <Variable> ' 🏠
🍉
'
|
# tests/compilation/valueTypeMutate.emojic
#
'🕊 🌼 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🌵 🍇
    ' <Print-Statement> '
  🍉

  🖍 🐖 😣 🍇
    🍮 ' <Variable> ' ' <String> '
  🍉

  🖍 🐖 😋 ' <Variable> ' 🔡 🍇
    🍮 ' <Variable> ' ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🌼🆕 ' <String> '
  🍮 ' <Variable> ' ' <Variable> '
  🌵 ' <Variable> '
  😣 ' <Variable> '
  🌵 ' <Variable> '
  🌵 ' <Variable> '
  🍮 ' <Variable> ' ' <Variable> '
  🌵 ' <Variable> '
  😋 ' <Variable> ' ' <String> '
  🌵 ' <Variable> '
  🌵 ' <Variable> '
  🌵 ' <Variable> '
🍉
'
|
# tests/compilation/conditionalProduce.emojic
#
'🕊 🥙 🍇
  🍰 ' <Variable> ' 🚂
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 🚂
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 😀 🍇
    ' <Print-Statement> '
    🍊 ' <Variable> ' 🍇
      ' <Print-Statement> '
    🍉
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🥙
  🍰 ' <Variable> ' 🍬🥙

  🍮 ' <Variable> ' ' <String> '
  🍮 ' <Variable> ' ⚡️
  🍮 ' <Variable> ' ' <String> '
  🍮 ' <Variable> ' 🔷🥙🆕 ' <Number> ' 👎 ' <Number> ' ' <Number> '
  🍮 ' <Variable> ' ⚡️

  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/classSubInstanceVar.emojic
#
'🐇 🙈 🍇
	🍰 ' <Variable> ' 🚂

	🐈 🆕 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 🏋️ 🍇
    😀🔡 ' <Variable> ' ' <Number> '
  🍉
🍉

🐇 🐰 🙈 🍇
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚂 ' <Variable> ' 🚂 🍇
    🐐🆕 ' <Variable> '
  🍉

  🐖 📏 🍇
    😀🔡 ' <Variable> ' ' <Number> '
  🍉
🍉


🏁 🍇
	🍦 ' <Variable> ' 🔷🐰🆕 ' <Number> ' ' <Number> '
  🍦 ' <Variable> ' 🔷🙈🆕 ' <Number> '
  🏋️ ' <Variable> '
  📏 ' <Variable> '
  🏋️ ' <Variable> '
🍉
'
|
# tests/compilation/chaining.emojic
#
'🏁 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍮 ' <Variable> ' ' <String> '

  🍻 ' <Print-Statement> '
  🍻 😀 🍻 📝 ' <Variable> ' ' <SymbolLiteral> '

  🍰 ' <Variable> ' 🍬🔡
  🍮 ' <Variable> ' ⚡️

  🍻 ' <Print-Statement> '
  🍻 😀 🍻 📝 ' <Variable> ' ' <SymbolLiteral> '

  ' <Print-Statement> '
🍉
'
|
# tests/compilation/protocolSelfGeneric.emojic
#
'🐊 💿 🍇
  🐖 🎶 ' <Variable> ' 🐕
🍉

🐇 🌗 🍇
  🐊 💿

  🍰 ' <Variable> ' 🚂

  🐈 🆕 @secret 🚂 🍇
    🍮 ' <Variable> ' @secret
  🍉

  🐖 💱 ➡️ 🚂 🍇
    🍎 ' <Variable> '
  🍉

  🐖 🎶 ' <Variable> ' 🌗 🍇
    🍊 😛 💱 🐕 💱 ' <Variable> ' 🍇
      ' <Print-Statement> '
    🍉
    🍓 🍇
      ' <Print-Statement> '
    🍉
  🍉
🍉

🐇 🌵 🍇
  🐊 💿

  🐈 🆕 🍇🍉

  🐖 🎶 ' <Variable> ' 🌵 🍇🍉
🍉

🐇 📻 🍇
  🐇🐖 🏀 🐚A💿 ' <Variable> ' ' <Variable> ' ' <Variable> ' ' <Variable> ' 🍇
    🎶 ' <Variable> ' ' <Variable> '
  🍉
🍉

🏁 🍇
  🍩🏀📻 🐚🌗 🔷🌗🆕 ' <Number> ' 🔷🌗🆕 ' <Number> '
  🍩🏀📻 🐚🌗 🔷🌗🆕 ' <Number> ' 🔷🌗🆕 ' <Number> '
🍉
'
|
# tests/compilation/genericProtocolValueType.emojic
#
'🐊 🦀🐚' <Variable> '⚪️🐚' <Variable> '⚪️ 🍇
	🐖 🦀 ' <Variable> ' ' <Variable> ' ➡️ ' <Variable> '
🍉

🕊 🐾 🐚' <Variable> '⚪️ 🍇
	🐊 🦀🐚🔡🐚' <Variable> '

	🐈 🆕 🍇

	🍉

	🐖 🦀 ' <Variable> ' 🔡 ➡️ ' <Variable> ' 🍇
		🍎 ' <Number> '
	🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 🦀🐚🔡🐚🚂
  🍮 ' <Variable> ' 🔷🐾🐚🚂🆕

  😀 🔡 🦀 ' <Variable> ' ' <String> ' ' <Number> '
🍉
'
|
# tests/compilation/captureTypeMethod.emojic
#
'🐇 🕵 🍇
  🍰 ' <Variable> ' 🔡

  🔑🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐇🐖 🥚 ➡️  🕵 🍇
    🍎 🔷🐕🆕 ' <String> '
  🍉

  🐖 😀 🍇
    ' <Print-Statement> '
  🍉
🍉

🕊 📅 🍇
  🐇🐖 🎆 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🌶🍩🥚🕵
  😀 🍭 ' <Variable> '
  🍦 ' <Variable> ' 🌶🍩🎆📅
  🍭 ' <Variable> '
🍉
'
|
# tests/compilation/typeAlias.emojic
#
'🐇 🔶🎅🎁 🍇
  🐇🐖 🙂 🍇
    ' <Print-Statement> '
  🍉
🍉

🔻 💧 🔶🎅🎁
🔻 🌼 🍨
🔻 🔶🍣🍐 🌼

🏁 🍇
  🍩🙂🔶🎅🎁
  🍩🙂💧

  🍰 ' <Variable> ' 🔶🍣🍐🐚🔡
  🍮 ' <Variable> ' ' <ListLiteral> '
🍉
'
|
# tests/compilation/protocolMulti.emojic
#
'🐊 💡 🍇
  🐖 🔦 ' <Variable> ' 🚀
🍉

🐊 📞 🍇
  🐖 📞 ' <Variable> ' 🔡
🍉

🕊 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 🎇 ' <Variable> ' 🍱📞💡🍱 🍇
    📞 ' <Variable> ' ' <String> '
    🔦 ' <Variable> ' ' <Number> '
  🍉
🍉

🏁 🍇
  🍩🎇🥊 🔷🚁🆕
  🍩🎇🥊 🔷📱🆕
🍉
'
|
# tests/compilation/intTest.emojic
#
'🏁 🍇
  😀 🔡 ' <Number> ' ' <Number> '
  😀 🔡 ' <Number> ' ' <Number> '
  😀 🔡 ' <Number> ' ' <Number> '
🍉
'
|
# tests/compilation/errorIsError.emojic
#
'🦃 🏜 🍇
  🔘🔋
  🔘🍟
🍉

🐇 🐟 🍇
  🐇🐖 🙅 ➡️ 🚨🏜🔡 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋 ➡️ 🚨🏜🔡 🍇
    🍎 ' <String> '
  🍉

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🍎 ' <String> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍩🙋🐟
  🍦 ' <Variable> ' 🍩🙅🐟
  🍦 ' <Variable> ' 🍩🙅‍♂️🐟
  🍦 ' <Variable> ' 🍩🙋‍♂️🐟

  🍊 🚥 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/classOverride.emojic
#
'🐇 🐟 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    ' <Print-Statement> '
  🍉

  ✒️ 🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🌕 🐡 🍇
  ✒️ 🐖 🥛 🍇
    ' <Print-Statement> '
  🍉

  ✒️ 🐖 🙋 🍇
    ' <Print-Statement> '
  🍉

  🐖 💎 🍇
    ' <Print-Statement> '
  🍉

  🐖 🥞 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕 ' <String> '
  🍦 ' <Variable> ' 🔷🐡🆕
  🍦 ' <Variable> ' 🔷🌕🆕

  🙋 ' <Variable> '
  🙋 ' <Variable> '
  🥛 ' <Variable> '
  🙋 ' <Variable> '
  🥛 ' <Variable> '
  💎 ' <Variable> '
  🥞 ' <Variable> '
🍉
'
|
# tests/compilation/isNothingness.emojic
#
'🕊 🥐 🍇
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 😀 🍇
    😀 ' <List> '
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
  🍉

  🐇 🐖 🐤 ➡️  ⚪️ 🍇
    🍎 ' <String> '
  🍉

  🐇 🐖 🐦 ➡️  ⚪️ 🍇
    🍎 ⚡️
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' ⚪️
  🍰 ' <Variable> ' 🍬🥐
  🍰 ' <Variable> ' 🍬🔵

  🍮 ' <Variable> ' ⚡️

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️  🍩🐦🥐 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍮 ' <Variable> ' ' <String> '
  🍮 ' <Variable> ' ' <Number> '
  🍮 ' <Variable> ' 🔷🥐🆕 👍 ' <String> ' ' <Number> '
  🍮 ' <Variable> ' ' <String> '

  🍊 ☁️ ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉

  🍊 ☁️  🍩🐤🥐 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/captureMethod.emojic
#
'🐇 🕵 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🏷 ' <Variable> ' 🔡 🍇
    🍮 ' <Variable> ' ' <Variable> '
  🍉

  🐖 😀 🍇
    😀 ' <Variable> '
  🍉
🍉


🏁 🍇
  🍦 ' <Variable> ' 🌶📝 ' <String> '
  😀 🍭 ' <Variable> ' ' <SymbolLiteral> '
  😀 🍭 ' <Variable> ' ' <SymbolLiteral> '

	🍦 ' <Variable> ' 🔷🕵🆕 ' <String> '
	🍦 ' <Variable> ' 🌶🏷 ' <Variable> '
	🍦 ' <Variable> ' 🌶😀' <Variable> '
	🍭 ' <Variable> '
	🍭 ' <Variable> ' ' <String> '
	🍭 ' <Variable> '
🍉
'
|
# tests/compilation/castAny.emojic
#
'🐇 🐟 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    ' <Print-Statement> '
  🍉
🍉

🕊 🥐 🍇
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 😀 🍇
    😀 ' <List> '
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
  🍉
🍉

🕊 🥙 🍇
  🍰 ' <Variable> ' 🚂
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 🚂
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 😀 🍇
    😀 ' <List> '
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
  🍉
🍉

🦃 ⏰ 🍇
  🔘🥓
  🔘🥞
  🔘🥐

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷⏰🥐 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷⏰🥞 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷⏰🥓 🍇
      🍎 ' <String> '
    🍉
    🍎 ' <String> '
  🍉
🍉


🏁 🍇
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🐟🆕 ' <String> '
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' ' <String> '
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🥐🆕 👎 ' <String> ' ' <Number> '
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' ' <Number> '
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🐡🆕
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷⏰🥐
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🥙🆕 ' <Number> ' 👎 ' <Number> ' ' <Number> '

  🙋 🍺 🔲 ' <Variable> ' 🐟
  😀 🍺 🔲 ' <Variable> ' 🔡
  😀 🍺 🔲 ' <Variable> ' 🥐
  😀 🔡 🍺 🔲 ' <Variable> ' 🚂 ' <Number> '
  🙋 🍺 🔲 ' <Variable> ' 🐟
  🥛 🍺 🔲 ' <Variable> ' 🐡
  😀 🔡 🍺 🔲 ' <Variable> ' ⏰
  😀 🍺 🔲 ' <Variable> ' 🥙

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🔡  🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐡  🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  🍇
    ' <Print-Statement> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' ⏰  🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/privateMethod.emojic
#
'🐇 🐟 🍇
  🔑 🐈 🆕 🍇🍉

  🐖 😇 🍇
    🙋🐕
  🍉

  🔒 🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  🔒 🐖 🙋 a 🚂 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🏁 🍇
  😇🔷🐟🆕
  😇🔷🐡🆕
🍉
'
|
# tests/compilation/unwrap.emojic
#
'🏁 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡

  🍮 ' <Variable> ' ' <String> '
  🍮 ' <Variable> ' ⚡️
  🍮 ' <Variable> ' ' <String> '

  😀 🍺' <Variable> '
  😀 🍺' <Variable> '
🍉
'
|
# tests/compilation/closureBasic.emojic
#
'🏁 🍇
  🍦 ' <Variable> ' 🍇 ' <Variable> ' 🔡
    ' <Print-Statement> '
  🍉

  🍭 ' <Variable> ' ' <String> '
  🍭 ' <Variable> ' ' <String> '
  🍭 ' <Variable> ' ' <String> '

  ' <Print-Statement> '
🍉
'
|
# tests/compilation/callable.emojic
#
'🏁 🍇
  🍦 ' <Variable> ' ' <String> '

  🍦 ' <Variable> ' 🌶 📝 ' <Variable> '

  😀 🍭 ' <Variable> ' ' <SymbolLiteral> '
  😀 🍭 ' <Variable> ' ' <SymbolLiteral> '

  🍦 ' <Variable> ' 🍇 ' <Variable> ' 🔡 ➡️ 🔡
    ' <Print-Statement> '

    🍮 ' <Variable> ' ' <String> '

    🔂 i️ ⏩ ➖ 🐔 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🍮 ' <Variable> ' 📝 ' <Variable> ' 🍺🐽 ' <Variable> ' ' <Variable> '
    🍉
    🍎 ' <Variable> '
  🍉

  😀 🍭 ' <Variable> ' ' <String> '

  🍦 ' <Variable> ' 🔷🕵🐑 ' <String> '

  🍦 ' <Variable> ' 💳 ' <Variable> '
  🏷 ' <Variable> ' ' <String> '

  😀 🍭 ' <Variable> '

  🍦 walfriedGrüßer 🍩🙋🍤 ' <String> '
  😀 🍭 walfriedGrüßer ' <Number> '
  😀 🍭 walfriedGrüßer ' <Number> '
  😀 🍭 walfriedGrüßer ' <Number> '

  🍦 ' <Variable> ' 🌶🍩🎂⚽️
  😀 🍭 ' <Variable> '

  🍦 ' <Variable> ' 🌶🔡' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '

  🍦 ' <Variable> ' 🌶🍩⚾️🚀
  😀 🔡 🍭 ' <Variable> ' ' <Number> '
🍉

🐇 🕵 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🐑 @name 🔡 🍇
    🍮 ' <Variable> ' @name
  🍉

  🐖 🏷 ' <Variable> ' 🔡 🍇
    🍮 ' <Variable> ' ' <Variable> '
  🍉

  🐖 💳 ➡️ 🍇➡️🔡🍉 🍇
    🍎 🍇 ➡️ 🔡
      🍎 ' <Variable> '
    🍉
  🍉

🍉

🐇 ⚽️ 🍇
  🐇🐖 🎂 ➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 🍤 🍇
  🐇🐖 🙋 ' <Variable> ' 🔡 ➡️ 🍇🚂➡️🔡🍉 🍇
    🍎 🍇 ' <Variable> ' 🚂 ➡️ 🔡
      🍊 😛 ' <Variable> ' ' <Number> ' 🍇
        🍎 ' <List> '
      🍉
      🍎 ' <List> '
    🍉
  🍉
🍉
'
|
# tests/compilation/errorInitializer.emojic
#
'🦃 🏜 🍇
  🔘🔋
  🔘🍟
🍉

🐇 🐟 🍇
  🐈🚨🏜 🆕 🍇🍉
  🐈🚨🏜 🆒 🍇
    🚨🔷🏜🍟
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕
  🍦 ' <Variable> ' 🔷🐟🆒

  🍊 🚥 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
  🍊 🚥 ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🍓 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/generics.emojic
#
'🐇 🎁 🐚 ' <Variable> ' 🔵 🍇

  🍰 ' <Variable> ' ' <Variable> '

  🐈 ✂️ =etwas T 🍇
    🍮 ' <Variable> ' =etwas
  🍉

  🐖 🎉 ➡️  ' <Variable> ' 🍇
    🍎 ' <Variable> '
  🍉
🍉

🐇 🌟 🐚 ' <Variable> ' 🔵 🎁 🐚 ' <Variable> ' 🍇

  ✒️ 🐖 🎉 ➡️ ' <Variable> ' 🍇
    🍎 🐿 🎉
  🍉

  🐖 🐌 ➡️ 🌟 🐚 ' <Variable> ' 🍇
    🍎 🐕
  🍉

🍉

🐇 ☑️ 🌟 🐚 🔡 🍇

  ✒️ 🐖 🎉 ➡️ 🔡 🍇
    🍎 🐿 🎉
  🍉

🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷 🌟🐚🔡 ✂️ ' <String> '

  😀 🎉 ' <Variable> '
  😀 🎉 🐌 ' <Variable> '

  🍦 ' <Variable> '  🔷☑️ ✂️ ' <String> '
  😀 🎉 ' <Variable> '
  😀 🎉 🐌 ' <Variable> '
🍉
'
|
# tests/compilation/selfInDeclaration.emojic
#
'🐊 😛 🍇
	🐖 😛 ' <Variable> ' 🐕 ➡️ 👌
🍉

🐇 🐾 🍇
	🐊 😛
	🍰 ' <Variable> ' 🔡

	🐈 🆕 @name 🔡 🍇
		🍮 ' <Variable> ' @name
	🍉

	🐖 🏷 ➡️ 🔡 🍇
		🍎 ' <Variable> '
	🍉

	🐖 😛 ' <Variable> ' 🐕 ➡️ 👌 🍇
		🍎 😛 ' <Variable> ' 🏷 ' <Variable> '
	🍉
🍉

🐇 🐻 🐾 🍇

🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐻🆕 ' <String> '
  🍦 ' <Variable> ' 🔷🐻🆕 ' <String> '

  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/valueTypeBoxCopySelf.emojic
#
'🐊 💷 🍇
  🐖 😀
🍉

🕊 🍔 🍇
  🐊 💷

  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉

  🐖 💷 ➡️ 💷 🍇
    🍎 🐕
  🍉
🍉

🕊 🍕 🍇
  🐊 💷

  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 👌

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 👌 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉

  🐖 💷 ➡️ 💷 🍇
    🍎 🐕
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍔🆕 ' <String> ' ' <ListLiteral> '
  🍦 ' <Variable> ' 💷 ' <Variable> '
  ' <Print-Statement> '

  🍦 ' <Variable> ' 🔷🍕🆕 ' <String> ' ' <ListLiteral> ' 👍 👍
  🍦 ' <Variable> ' 💷 ' <Variable> '
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/enumMethod.emojic
#
'🦃 ⏰ 🍇
  🔘🥓
  🔘🥞
  🔘🥐

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷⏰🥐 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷⏰🥞 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷⏰🥓 🍇
      🍎 ' <String> '
    🍉
    🍎 ' <String> '
  🍉
🍉

🏁 🍇
	🍦 ' <Variable> ' 🔷⏰🥞
  ' <Print-Statement> '

  🍦 ' <Variable> ' 🔷⏰🥐
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/castToSelf.emojic
#
'🐇 🐟 🍇
  🐇🐖 🙋 ' <Variable> ' ⚪️ 🍇
    🙋 🍺 🔲 ' <Variable> ' 🐕
  🍉

  🔑 🐈 🆕 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕
  🍩🙋🐟 ' <Variable> '
🍉
'
|
# tests/compilation/valueTypeCopySelf.emojic
#
'🕊 🍔 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉

  🐖 🌈 🍇
    🍦 ' <Variable> ' 🐕
    🍩🦋🍔 ' <Variable> '
  🍉

  🐖 🍀 🍇
    🍩🦋🍔 🐕
  🍉

  🐇🐖 🦋 ' <Variable> ' 🍔 🍇
    😀 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍔🆕 ' <String> ' ' <ListLiteral> '
  ' <Print-Statement> '
  🍀 ' <Variable> '
  🌈 ' <Variable> '
🍉
'
|
# tests/compilation/errorPerfect.emojic
#
'🦃 🏜 🍇
  🔘🔋
  🔘🍟
🍉

🐇 🐟 🍇
  🐇🐖 🙋 ➡️ 🚨🏜🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🏁 🍇
  😀 🚇 🍩🙋🐟
🍉
'
|
# tests/compilation/babyBottleInitializer.emojic
#
'🐇 🐟 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🦆 🍇
  🍰 ' <Variable> ' 🍬🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🙋 🍇
    😀 🍺 ' <Variable> '
  🍉
🍉

🏁 🍇
  🙋 🔷🐟🆕 ' <String> '
  🙋 🔷🐟🆕 ' <String> '
  🙋 🔷🦆🆕 ' <String> '
🍉
'
|
# tests/compilation/classSuper.emojic
#
'🐇 🐟 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🥛 ' <Variable> ' 🚀 ➡️ 🚀 🍇
    🍎 ✖️➗ ' <Variable> ' ' <Number> ' ' <Number> '
  🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  ✒️ 🐖 🙋 🍇
    🐿 🙋
    ' <Print-Statement> '
  🍉

  ✒️ 🐖 🥛 ' <Variable> ' 🚀 ➡️ 🚀 🍇
    🍎 ➕🐿🥛 ' <Variable> ' ' <Number> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕 ' <String> '
  🍦 ' <Variable> ' 🔷🐡🆕

  🙋 ' <Variable> '
  🙋 ' <Variable> '
  😀🔡 🥛 ' <Variable> ' ' <Number> ' ' <Number> '
  😀🔡 🥛 ' <Variable> ' ' <Number> ' ' <Number> '
🍉
'
|
# tests/compilation/valueTypeSelf.emojic
#
'🕊 🌼 🍇
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 ☄️ ➡️ 🚂 🍇
    🍎 ✖️ ' <Variable> ' ' <Number> '
  🍉

  🐖 😀 🍇
    😀 🔡 ☄️🐕 ' <Number> '
  🍉
🍉

🏁 🍇
  😀 🔷🌼🆕 ' <Number> '
🍉
'
|
# tests/compilation/closureCaptureValueType.emojic
#
'🕊 🥐 🍇
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 😀 🍇
    😀 ' <List> '
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🥐🆕 👍 ' <String> ' ' <Number> '
  🍦 ' <Variable> ' 🔷🥐🆕 👍 ' <String> ' ' <Number> '
  🍭 🍇
    ' <Print-Statement> '
    ' <Print-Statement> '
    🍦 ' <Variable> ' 🔷🥐🆕 👎 ' <String> ' ' <Number> '
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/extension.emojic
#
'🏁 🍇
  😀 😈 ' <String> '
🍉

🐋 🔡 🍇
  🐖 😈 ➡️ 🔡 🍇
    🍎 🔪 🐕 ' <Number> ' ' <Number> '
  🍉
🍉
'
|
# tests/compilation/gcStressTest3.emojic
#
'🐇 🍔 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🐇 🍾 🍇
  🍰 ' <Variable> ' 🚀
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚀 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇
  🍉

  🐖 😀 🍇
    😀 ' <List> '
  🍉
🍉

🐇 📃 🍇
  🍰 ' <Variable> ' 🍔
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🍾

  🐈 🆕 🍼 ' <Variable> ' 🍔 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍬🍾 🍇
  🍉

  🐖 😀 🍇
    😀 ' <Variable> '
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <Variable> '
    🍉
  🍉

  🐇🐖 🤒 ' <Variable> ' 🍨🐚📃 🍇
    🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> ' ' <ListLiteral> ' ⚡️  🔷🍾🆕 ' <Number> ' ' <List> ' ' <Number> '
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> '  ' <ListLiteral> ' ' <String> ' 🔷🍾🆕 ' <Number> ' ' <List> ' ' <Number> '
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> '  ' <ListLiteral> ' ' <String> ' ⚡️
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> '  ' <ListLiteral> ' ' <String> ' ⚡️
      🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
        🐻 ' <Variable> ' ' <Variable> '
      🍉
      🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
        🐻 ' <Variable> ' ' <Variable> '
      🍉
      🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
        🐻 ' <Variable> ' ' <Variable> '
      🍉
      🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
        🐻 ' <Variable> ' ' <Variable> '
      🍉
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍨🐚📃🐸
  🍦 ' <Variable> ' 🔷🍨🐚📃🐸
  🍦 ' <Variable> ' 🔷🍨🐚📃🐸
  🍦 ' <Variable> ' 🔷🍨🐚📃🐸

  🍦 ' <Variable> ' 🔷💈🆕 🍇
    🍩🤒📃 ' <Variable> '
  🍉
  🍦 ' <Variable> ' 🔷💈🆕 🍇
    🍩🤒📃 ' <Variable> '
  🍉
  🍦 ' <Variable> ' 🔷💈🆕 🍇
    🍩🤒📃 ' <Variable> '
  🍉
  🍦 ' <Variable> ' 🔷💈🆕 🍇
    🍩🤒📃 ' <Variable> '
  🍉

  🛂 ' <Variable> '
  🛂 ' <Variable> '
  🛂 ' <Variable> '
  🛂 ' <Variable> '

  🔂 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/commonType.emojic
#
'🐊 💡 🍇
  🐖 🔦 ' <Variable> ' 🚀
🍉

🐊 📞 🍇
  🐖 📞 ' <Variable> ' 🔡
🍉

🕊 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉
🍉

🕊 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' ' <ListLiteral> '
  🍰 ' <Variable> ' 🍨🐚🔡
  🍮 ' <Variable> ' ' <Variable> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷📱🆕 🍆
  🍰 ' <Variable> ' 🍨🐚📱
  🍮 ' <Variable> ' ' <Variable> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷📱🆕 🔷☎️ 🆕 🍆
  🍰 ' <Variable> ' 🍨🐚📞
  🍮 ' <Variable> ' ' <Variable> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷🔦🆕 🍆
  🍰 ' <Variable> ' 🍨🐚💡
  🍮 ' <Variable> ' ' <Variable> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷🚁🆕 🍆
  🍰 ' <Variable> ' 🍨🐚🍱💡📞🍱
  🍮 ' <Variable> ' ' <Variable> '

  ' <Print-Statement> '
🍉
'
|
# tests/compilation/assignmentByCallInstanceVariable.emojic
#
'🐇 ⏲ 🍇
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍇
    🍮 ' <Variable> ' ' <Number> '
  🍉

  🐖 📆 🍇
    🍮➕ ' <Variable> ' ' <Number> '
  🍉

  🐖 📈 🍇
    🍮➕ ' <Variable> ' ' <Number> '
  🍉

  🐖 😀 🍇
    😀 🔡 ' <Variable> ' ' <Number> '
  🍉
🍉

🐇 📃 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍇
    🍮 ' <Variable> ' ' <String> '
  🍉

  🐖 🖋 🍇
    🍮📝 ' <Variable> ' ' <SymbolLiteral> '
  🍉

  🐖 😀 🍇
    😀 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷⏲🆕
  📆 ' <Variable> '
  📈 ' <Variable> '
  ' <Print-Statement> '

  🍦 ' <Variable> ' 🔷📃🆕
  🖋 ' <Variable> '
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/assignmentByCallProtocol.emojic
#
'🐊 ➕🐚' <Variable> '⚪️ 🍇
  🐖 ➕ ' <Variable> ' ' <Variable> ' ➡️ ' <Variable> '
🍉

🐋 🚂 🍇
  🐊➕🐚🚂
🍉

🏁 🍇
  🍰 ' <Variable> ' ➕🐚🚂
  🍮 ' <Variable> ' ' <Number> '

  🍮➕ ' <Variable> ' ' <Number> '
  🍮➕ ' <Variable> ' ' <Number> '

  🍦 ' <Variable> ' 🍺🔲 ' <Variable> ' 🚂
  😀 🔡 ' <Variable> ' ' <Number> '
🍉
'
|
# tests/compilation/protocolValueType.emojic
#
'🐊 💡 🍇
  🐖 🔦 ' <Variable> ' 🚀
🍉

🐊 📞 🍇
  🐖 📞 ' <Variable> ' 🔡
  🐖 🔙 ➡️ 🔡
🍉

🕊 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 😷 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🕊 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    ' <Print-Statement> '
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 ' <Variable> ' 💡 🍇
    🔦 ' <Variable> ' ' <Number> '
  🍉

  🐇🐖 📞 ' <Variable> ' 📞 🍇
    📞 ' <Variable> ' ' <String> '
    😀 🔙' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷📱🆕

  🍩💡🥊 ' <Variable> '
  🍩📞🥊 ' <Variable> '
  🍩📞🥊 🔷☎️🆕
  🍩💡🥊 🔷🔦🆕
🍉
'
|
# tests/compilation/assignmentByCall.emojic
#
'🏁 🍇
  🍮 ' <Variable> ' ' <Number> '

  🍮➕ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➕ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➖ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➖ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮 ' <Variable> ' ' <Number> '

  🍮✖️ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➗ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮👈 ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮 ➕ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮 ' <Variable> ' ' <String> '

	🍮📝 ' <Variable> ' ' <SymbolLiteral> '
	' <Print-Statement> '

	🍮📝 ' <Variable> ' ' <SymbolLiteral> '
	' <Print-Statement> '
🍉
'
|
# tests/compilation/enumTypeMethod.emojic
#
'🦃 ⏰ 🍇
  🔘🥓
  🔘🥞
  🔘🥐

  🐇🐖 🔡 ' <Variable> ' 🔡 ➡️ ⏰ 🍇
    🍊 😛 ' <Variable> ' ' <String> ' 🍇
      🍎 🔷⏰🥐
    🍉
    🍊 😛 ' <Variable> ' ' <String> ' 🍇
      🍎 🔷⏰🥞
    🍉
    🍊 😛 ' <Variable> ' ' <String> ' 🍇
      🍎 🔷⏰🥓
    🍉
    🍎 🔷⏰🥓 ' <Comment> '
  🍉

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷⏰🥐 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷⏰🥞 🍇
      🍎 ' <String> '
    🍉
    🍊 😛 🐕 🔷⏰🥓 🍇
      🍎 ' <String> '
    🍉
    🍎 ' <String> '
  🍉
🍉

🏁 🍇
	🍦 ' <Variable> ' 🍩🔡⏰ ' <String> '
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/variableInitAndScoping.emojic
#
'🏁 🍇
  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    ' <Print-Statement> '
    🍰 ' <Variable> ' 🍬🔡
    🔂 ' <Variable> ' ' <ListLiteral> ' 🍇
      🍊 ❎☁️' <Variable> ' 🍇
        😀 🍺' <Variable> '
      🍉
      🍮 ' <Variable> ' ' <Variable> '
    🍉
  🍉
🍉
'
|
# tests/compilation/stringConcat.emojic
#
'🏁 🍇
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/gcStressTest2.emojic
#
'🕊 🍔 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🕊 🍾 🍇
  🍰 ' <Variable> ' 🚀
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚀 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇
  🍉

  🐖 😀 🍇
    😀 ' <List> '
  🍉
🍉

🐇 📃 🍇
  🍰 ' <Variable> ' 🍔
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🍾

  🐈 🆕 🍼 ' <Variable> ' 🍔 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍬🍾 🍇
  🍉

  🐖 😀 🍇
    😀 ' <Variable> '
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <Variable> '
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍨🐚📃🐸

  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> ' ' <ListLiteral> ' ⚡️  🔷🍾🆕 ' <Number> ' ' <List> ' ' <Number> '
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> '  ' <ListLiteral> ' ' <String> ' 🔷🍾🆕 ' <Number> ' ' <List> ' ' <Number> '
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> '  ' <ListLiteral> ' ' <String> ' ⚡️
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 ' <List> '  ' <ListLiteral> ' ' <String> ' ⚡️
    🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🐻 ' <Variable> ' ' <Variable> '
    🍉
    🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🐻 ' <Variable> ' ' <Variable> '
    🍉
    🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🐻 ' <Variable> ' ' <Variable> '
    🍉
    🍊 😛 🚮 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🐻 ' <Variable> ' ' <Variable> '
    🍉
  🍉

  🔂 ' <Variable> ' ' <Variable> ' 🍇
    ' <Print-Statement> '
  🍉
🍉
'
|
# tests/compilation/classInheritance.emojic
#
'🐇 🐟 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐖 🙋 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    ' <Print-Statement> '
  🍉
🍉

🐇 🌕 🐡 🍇
  🐖 💎 🍇
    ' <Print-Statement> '
  🍉

  🐖 🥞 🍇
    ' <Print-Statement> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕 ' <String> '
  🍦 ' <Variable> ' 🔷🐡🆕
  🍦 ' <Variable> ' 🔷🌕🆕

  🙋 ' <Variable> '
  🙋 ' <Variable> '
  🥛 ' <Variable> '
  🙋 ' <Variable> '
  🥛 ' <Variable> '
  💎 ' <Variable> '
  🥞 ' <Variable> '
🍉
'
|
# tests/compilation/protocolGenericLayerClass.emojic
#
'🐊 📠🐚' <Variable> '⚪️ 🍇
  🐖 ⏱ ' <Variable> ' ' <Variable> '
  🐖 🚚 ➡️ ' <Variable> '
🍉

🕊 🍔 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <List> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🐇 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🚂 🍇
    ' <Print-Statement> '
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🐇 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🍔 🍇
    ' <Print-Statement> '
    ' <Print-Statement> '
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 ' <String> ' ' <ListLiteral> '
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 📠🐚🚂
  🍮 ' <Variable> ' 🔷🏨🆕

  ⏱ ' <Variable> ' ' <Number> '
  😀🔡 🚚 ' <Variable> ' ' <Number> '

  🍰 ' <Variable> ' 📠🐚🍔
  🍮 ' <Variable> ' 🔷🏣🆕

  ⏱ ' <Variable> ' 🔷🍔🆕 ' <String> ' ' <ListLiteral> '
  😀 🚚 ' <Variable> '
🍉
'
		}
	}
