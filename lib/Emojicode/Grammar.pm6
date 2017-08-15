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
			| '🍨' ' '? <String>+ %% \s+ '🍆' # XXX
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
			| '➗' \s+ <Variable> \s+ <Number>
			| '✖️' \s* <Expression> \s+ <Number>
			| <String>
			| <List>
			| <ListLiteral>
			| <Variable>
			| <Number>
			| <Block>
			| '⚡️'
			}

		token Print-Statement
			{
			| '😀' \s+ <Expression>
			}

		token Return-Statement
			{
			| '🍎' \s+ <Expression>
			}

		token Include
			{
			| '📜' \s+ <String>
			}

		token EnumValue
			{
			| '🔘' .
			}

		token Assignment-Statement
			{
			| '🍮' \s+ <Variable> \s+ <Expression>
			}

		token Declaration-Statement
			{
			'🍰' \s+ <Variable> \s+
				[
				| '⚪️'
				| <Variable>
				| '🍬'? <[ 👌 🚂 🚀 🔣 🔡 🍨 🍯 ⏩ ]>
				]
			}

		token _BlockStatement
			{
			| <Conditional>
			| <Conformance>
			| <Initializer>
			| <Method>
			| <Print-Statement>
			| <Return-Statement>
			| <Assignment-Statement>
			| <Declaration-Statement>
			| <EnumValue>
			}

		token Block
			{
			'🍇' \s*
				[
				| '➡️' \s* '🔡' \s+ [ <_BlockStatement>+ %% \s+ ]
				| [ <_BlockStatement>+ %% \s+ ]
				]?
			\s* '🍉'
			}

		token AccessMethod
			{
			| <[ ✒️ 🖍 ]> \s+
			}

		token Method
			{
			| <AccessMethod>? '🐖' \s+
					[
					| . \s+ <Variable> \s+
					| . \s* '➡️' \s+
					]?
				. \s+ <Block>
			| '🐖' \s+ . \s+ <Variable> \s+ .
			}

		token AccessLevel
			{
			| <[ 🔑 ]> \s*
			}

		token Initializer
			{
			<AccessLevel>? '🐈' \s+
				[
				| '🆕' \s+ '🍼' \s+ <Variable> \s+
				| . \s+ <Variable> \s+
				]?
			. \s+ <Block>
			}

		token Conformance
			{
			| '🐊' \s+ .
			}

		token Boolean
			{
			| <[ 👍 👎 ]>
			}

		token If
			{
			| '🍊' \s+ [ <Variable> | <Boolean> ] \s+ <Block>
			}

		token ElseIf
			{
			| '🍋' \s+ <Boolean> \s+ <Block>
			}

		token Else
			{
			| '🍓' \s+ <Variable> \s+ <Block>
			| '🍓' \s+ <Block>
			}

		token Conditional
			{
			| <If> [ \s+ <ElseIf> ]* [ \s+ <Else> ]?
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

  ' <Initializer> '

  ' <Method> '

  ' <Method> '

  ' <Method> '

  🐖 🔙➡️ 🔡 ' <Block> '
🍉

🐇 ⌚️  📱 ' <Block> '

🐇 ☎️ 🍇
  🐊 📞

  ' <Initializer> '

  ' <Method> '

  🐖 🔙➡️ 🔡 ' <Block> '
🍉

🐇 🔦 🍇
  🐊 💡

  ' <Initializer> '

  ' <Method> '
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

  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 👌 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    ' <Conditional> '
    ' <Conditional> '
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍕🆕 ' <String> ' ' <ListLiteral> ' 👍 👍
  🍰 ' <Variable> ' 💷
  ' <Assignment-Statement> '
  ' <Print-Statement> '
🍉
'
|
# tests/compilation/if.emojic
#
'🏁 🍇
  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '

  ' <Conditional> '
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
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🕊 🏨 🍇
  🐊 📠🐚🚂

  ' <Initializer> '

  ' <Method> '

  🐖 🚚 ➡️ 🚂 ' <Block> '
🍉

🕊 🏣 🍇
  🐊 📠🐚🍔

  ' <Initializer> '

  ' <Method> '

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
'🌍 🐇 🤘🏻 ' <Block> '

🌍 🐇 🤘🏿 ' <Block> '

🌍 🐇 🇦🇹 ' <Block> '


🌍 🐇 🇦🇺 ' <Block> '

🌍 🐇 👨‍👩‍👦‍👦 ' <Block> '

🌍 🐇 👨‍👩‍👧‍👧 ' <Block> '

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
      🍊 😛 ' <Variable> ' ' <Number> ' ' <Block> '
      ' <Return-Statement> '
    🍉
  🍉

  ' <Comment> '
  🐇🐖 👌🏾 ' <Variable> ' 🔡 ' <Variable> ' 🚂 ' <Variable> ' 🔡 ' <Variable> ' 🚀 ➡️ 🍇➡️🔡🍉 🍇
    🍊 ⬅️ ' <Variable> ' ' <Number> ' ' <Block> '
		' <Return-Statement> '
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
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🔡 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' ➕ ' <Variable> ' ' <Number> '
  🍉

  🐖 😀 🍇
    ' <Print-Statement> '
    😀 🔡 ' <Variable> ' ' <Number> '
  🍉
🍉

🕊 🌸 🍇
  ' <Declaration-Statement> '

  ' <Initializer> '

  🐖 🤣 ➡️ 🔡 ' <Block> '
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

  🐖 🌼 ➡️ 🌼 ' <Block> '
🍉

🕊 ⚖️ 🍇
  🍰 ' <Variable> ' 🌼
  🍰 ' <Variable> ' 🌼

  🐈 🆕 🍼 ' <Variable> ' 🌼 🍼 ' <Variable> ' 🌼 ' <Block> '

  🐖 🌗 ➡️ 🌼 ' <Block> '

  🐖 🌓 ➡️ 🌼 ' <Block> '
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

  ' <Declaration-Statement> '

  🐈 ✂️ =etwas ' <Variable> ' 🍇
    🍮 ' <Variable> ' =etwas
  🍉

  🐖 🎉 ➡️  ' <Variable> ' ' <Block> '
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
  ' <EnumValue> '
  ' <EnumValue> '

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷🏜🔋 ' <Block> '
    🍊 😛 🐕 🔷🏜🍟 ' <Block> '
    ' <Return-Statement> '
  🍉
🍉

🐇 🐟 🍇
  🐇🐖 🙅 ➡️ 🚨🏜🔡 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋 ➡️ 🚨🏜🔡 ' <Block> '

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🍟
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ ' <Block> '
🍉

🏁 🍇
  🥑 ' <Variable> ' 🍩🙋🐟 ' <Block> '
  ' <Else> '

  🥑 ' <Variable> ' 🍩🙅🐟 ' <Block> '
  ' <Else> '

  🥑 ' <Variable> ' 🍩🙅‍♂️🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  ' <Else> '

  🥑 ' <Variable> ' 🍩🙋‍♂️ 🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  ' <Else> '
🍉
'
|
# tests/compilation/gcStressTest1.emojic
#
'🐇 😇 ' <Block> '

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
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  ' <Initializer> '
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
'🕊 😇 ' <Block> '

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
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  ' <Initializer> '
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
'🏁 ' <Block> '
'
|
# tests/compilation/piglatin.emojic
#
'🐋 🔡 🍇
  🐖 🐷 ➡️ 🔡 🍇
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' ' <Number> '
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' 🐔 🐕
    ' <Return-Statement> '
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

  ' <EnumValue> '
  ' <EnumValue> '
  ' <EnumValue> '

  🐖 🇨🇭 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷🍴🍫 ' <Block> '
    🍊 😛 🐕 🔷🍴🍭 ' <Block> '
    🍊 😛 🐕 🔷🍴🥐 ' <Block> '
    ' <Return-Statement> '
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
'🦃 🏷 ' <Block> '

🏁 🍇
	🍦 ' <Variable> ' 🔷🏷🏁
	🍦 ' <Variable> ' 🔷🏷🏁
  🍦 ' <Variable> ' 🔷🏷🚧
  🍦 ' <Variable> ' 🔷🏷📜
  🍦 ' <Variable> ' 🔷🏷📜

	🍊 😛 ' <Variable> ' ' <Variable> ' ' <Block> '
  🍊 😛 ' <Variable> ' ' <Variable> ' ' <Block> '
  🍊 😛 ' <Variable> ' ' <Variable> ' ' <Block> '
  🍊 😛 ' <Variable> ' ' <Variable> ' ' <Block> '
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

	' <Initializer> '

	🐖 🦀 ' <Variable> ' 🔡 ➡️ ' <Variable> ' ' <Block> '
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
  🐇' <Method> '
🍉
'
|
# tests/compilation/downcastClass.emojic
#
'🐇 🐟 ' <Block> '

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  ' <Method> '
🍉

🏁 🍇
  🍰 ' <Variable> ' 🔵
  🍮 ' <Variable> ' 🔷🐟🆕 ' <String> '
  🍰 ' <Variable> ' 🔵
  ' <Assignment-Statement> '
  🍰 ' <Variable> ' 🐟
  🍮 ' <Variable> ' 🔷🐡🆕

  🙋 🍺 🔲 ' <Variable> ' 🐟
  😀 🍺 🔲 ' <Variable> ' 🔡
  🥛 🍺 🔲 ' <Variable> ' 🐡

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🔡  ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  ' <Block> '
🍉
'
|
# tests/compilation/repeatWhile.emojic
#
'🏁 🍇
  ' <Assignment-Statement> '

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

	🔑 ' <Initializer> '

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
  🔑 ' <Initializer> '

  ' <Method> '
🍉

🐇 🐡 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ' <Method> '
🍉

🐇 🐋 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ' <Method> '
🍉

🐇 🐠 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ' <Method> '
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
  ' <Declaration-Statement> '

  ' <Initializer> '

  🐖 💸 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' ➖ ' <Variable> ' ' <Variable> '
  🍉

  🐖 💶 ➡️ 🚂 ' <Block> '
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
  ' <Declaration-Statement> '

  🐈 🐑 @name 🔡 🍇
    🍮 ' <Variable> ' @name
  🍉

  ' <Method> '

  🐖 💳 ➡️ 🍇➡️🔡🍉 ' <Block> '
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
'📦 ' <Variable> ' 💊

🐇 🔶🎅🎁 🍇
  🐇' <Method> '
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

  ' <Initializer> '

  ' <Method> '

  ' <Method> '

  ' <Method> '

  ' <Method> '
🍉

🐇 ☎️ 🍇
  🐊 📞

  ' <Initializer> '

  ' <Method> '

  🐖 🔙➡️ 🔡 ' <Block> '
🍉

🐇 🔦 🍇
  🐊 💡

  ' <Initializer> '

  ' <Method> '
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
<Include> '

🏁 🍇
  🍩💐🐤
🍉
'
|
# tests/compilation/castGenericValueType.emojic
#
'🕊 🥛🐚 ' <Variable> ' ⚪️ 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' ' <Variable> ' 🍇
    🍮' <Variable> ' 👎
  🍉

  ' <Method> '
🍉

🕊 🦑🐚 ' <Variable> ' ⚪️ 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' ' <Variable> ' 🍼 ' <Variable> ' ' <Variable> ' ' <Block> '

  ' <Method> '

  ' <Method> '
🍉

🏁 🍇
  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🥛🐚🚂🆕 ' <Number> '
  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🥛🐚🔡🆕 ' <String> '

  😀 🔡 🥔 🍺 🔲 ' <Variable> ' 🥛🐚🚂 ' <Number> '
  😀 🥔 🍺 🔲 ' <Variable> ' 🥛🐚🔡

  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🦑🐚🔡🆕 ' <String> ' ' <String> '

  😀 👈 🍺 🔲 ' <Variable> ' 🦑🐚🔡
  😀 👉 🍺 🔲 ' <Variable> ' 🦑🐚🔡

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥛🐚🔡 ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥛🐚🚂 ' <Block> '
🍉
'
|
# tests/compilation/valueTypeRemoteAdditional.emojic
#
'🕊 🏠 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🔡 ' <Block> '

  ' <Method> '
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🏠🆕 ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> '
  ' <Print-Statement> '

  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🏠🆕 ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> '

  🍰 ' <Variable> ' 🍬🏠
  🍮 ' <Variable> ' 🔲 ' <Variable> ' 🏠
  😀🍺' <Variable> '

  🍮 ' <Variable> ' 🔷🏠🆕 ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> '
  ' <Assignment-Statement> '
  😀🍺🔲 ' <Variable> ' 🏠
🍉
'
|
# tests/compilation/valueTypeMutate.emojic
#
'🕊 🌼 ' <Block> '

🏁 🍇
  🍦 ' <Variable> ' 🔷🌼🆕 ' <String> '
  ' <Assignment-Statement> '
  🌵 ' <Variable> '
  😣 ' <Variable> '
  🌵 ' <Variable> '
  🌵 ' <Variable> '
  ' <Assignment-Statement> '
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
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 🚂 ' <Block> '

  🐖 😀 🍇
    ' <Print-Statement> '
    ' <Conditional> '
  🍉
🍉

🏁 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍬🥙
  🍰 ' <Variable> ' 🍬🥙

  ' <Assignment-Statement> '
  ' <Assignment-Statement> '
  ' <Assignment-Statement> '
  🍮 ' <Variable> ' 🔷🥙🆕 ' <Number> ' 👎 ' <Number> ' ' <Number> '
  ' <Assignment-Statement> '

  🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
  ' <Else> '
  🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
  ' <Else> '
  🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
  ' <Else> '
  🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
  ' <Else> '
  🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
  ' <Else> '
🍉
'
|
# tests/compilation/classSubInstanceVar.emojic
#
'🐇 🙈 🍇
	' <Declaration-Statement> '

	' <Initializer> '

  🐖 🏋️ 🍇
    😀🔡 ' <Variable> ' ' <Number> '
  🍉
🍉

🐇 🐰 🙈 🍇
  ' <Declaration-Statement> '

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
  ' <Declaration-Statement> '
  ' <Assignment-Statement> '

  🍻 ' <Print-Statement> '
  🍻 😀 🍻 📝 ' <Variable> ' ' <SymbolLiteral> '

  ' <Declaration-Statement> '
  ' <Assignment-Statement> '

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

  ' <Declaration-Statement> '

  🐈 🆕 @secret 🚂 🍇
    🍮 ' <Variable> ' @secret
  🍉

  🐖 💱 ➡️ 🚂 ' <Block> '

  🐖 🎶 ' <Variable> ' 🌗 🍇
    🍊 😛 💱 🐕 💱 ' <Variable> ' ' <Block> '
    ' <Else> '
  🍉
🍉

🐇 🌵 🍇
  🐊 💿

  ' <Initializer> '

  ' <Method> '
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

	' <Initializer> '

	🐖 🦀 ' <Variable> ' 🔡 ➡️ ' <Variable> ' ' <Block> '
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
  ' <Declaration-Statement> '

  ' <Initializer> '

  🐇🐖 🥚 ➡️  🕵 🍇
    🍎 🔷🐕🆕 ' <String> '
  🍉

  ' <Method> '
🍉

🕊 📅 🍇
  🐇' <Method> '
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
  🐇' <Method> '
🍉

🔻 💧 🔶🎅🎁
🔻 🌼 🍨
🔻 🔶🍣🍐 🌼

🏁 🍇
  🍩🙂🔶🎅🎁
  🍩🙂💧

  🍰 ' <Variable> ' 🔶🍣🍐🐚🔡
  ' <Assignment-Statement> '
🍉
'
|
# tests/compilation/protocolMulti.emojic
#
'🐊 💡 ' <Block> '

🐊 📞 ' <Block> '

🕊 📱 ' <Block> '

🐇 🚁 ' <Block> '

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
'🦃 🏜 ' <Block> '

🐇 🐟 🍇
  🐇🐖 🙅 ➡️ 🚨🏜🔡 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋 ➡️ 🚨🏜🔡 ' <Block> '

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ ' <Block> '
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍩🙋🐟
  🍦 ' <Variable> ' 🍩🙅🐟
  🍦 ' <Variable> ' 🍩🙅‍♂️🐟
  🍦 ' <Variable> ' 🍩🙋‍♂️🐟

  🍊 🚥 ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 🚥 ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 🚥 ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 🚥 ' <Variable> ' ' <Block> '
  ' <Else> '
🍉
'
|
# tests/compilation/classOverride.emojic
#
'🐇 🐟 ' <Block> '

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  ' <Method> '

  ' <Method> '
🍉

🐇 🌕 🐡 ' <Block> '

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
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 ' <Block> '

  ' <Method> '

  🐇 ' <Method> '

  🐇 ' <Method> '
🍉

🏁 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍬🥐
  🍰 ' <Variable> ' 🍬🔵

  ' <Assignment-Statement> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️  🍩🐦🥐 ' <Block> '
  ' <Else> '

  ' <Assignment-Statement> '
  ' <Assignment-Statement> '
  🍮 ' <Variable> ' 🔷🥐🆕 👍 ' <String> ' ' <Number> '
  ' <Assignment-Statement> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️ ' <Variable> ' ' <Block> '
  ' <Else> '

  🍊 ☁️  🍩🐤🥐 ' <Block> '
  ' <Else> '
🍉
'
|
# tests/compilation/captureMethod.emojic
#
'🐇 🕵 ' <Block> '


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
'🐇 🐟 ' <Block> '

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  ' <Method> '
🍉

🕊 🥐 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 ' <Block> '

  ' <Method> '
🍉

🕊 🥙 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🚂 🍼 ' <Variable> ' 🚂 ' <Block> '

  ' <Method> '
🍉

🦃 ⏰ 🍇
  ' <EnumValue> '
  ' <EnumValue> '
  ' <EnumValue> '

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷⏰🥐 ' <Block> '
    🍊 😛 🐕 🔷⏰🥞 ' <Block> '
    🍊 😛 🐕 🔷⏰🥓 ' <Block> '
    ' <Return-Statement> '
  🍉
🍉


🏁 🍇
  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🐟🆕 ' <String> '
  ' <Declaration-Statement> '
  ' <Assignment-Statement> '
  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🥐🆕 👎 ' <String> ' ' <Number> '
  ' <Declaration-Statement> '
  ' <Assignment-Statement> '
  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🐡🆕
  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷⏰🥐
  ' <Declaration-Statement> '
  🍮 ' <Variable> ' 🔷🥙🆕 ' <Number> ' 👎 ' <Number> ' ' <Number> '

  🙋 🍺 🔲 ' <Variable> ' 🐟
  😀 🍺 🔲 ' <Variable> ' 🔡
  😀 🍺 🔲 ' <Variable> ' 🥐
  😀 🔡 🍺 🔲 ' <Variable> ' 🚂 ' <Number> '
  🙋 🍺 🔲 ' <Variable> ' 🐟
  🥛 🍺 🔲 ' <Variable> ' 🐡
  😀 🔡 🍺 🔲 ' <Variable> ' ⏰
  😀 🍺 🔲 ' <Variable> ' 🥙

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🔡  ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐡  ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  ' <Block> '
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' ⏰  ' <Block> '
🍉
'
|
# tests/compilation/privateMethod.emojic
#
'🐇 🐟 🍇
  🔑 ' <Initializer> '

  🐖 😇 🍇
    🙋🐕
  🍉

  🔒 ' <Method> '
🍉

🐇 🐡 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  🔒 🐖 🙋 a 🚂 ➡️ 🚂 ' <Block> '
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
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  ' <Assignment-Statement> '
  ' <Assignment-Statement> '
  ' <Assignment-Statement> '

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

    ' <Assignment-Statement> '

    🔂 i️ ⏩ ➖ 🐔 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🍮 ' <Variable> ' 📝 ' <Variable> ' 🍺🐽 ' <Variable> ' ' <Variable> '
    🍉
    ' <Return-Statement> '
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
  ' <Declaration-Statement> '

  🐈 🐑 @name 🔡 🍇
    🍮 ' <Variable> ' @name
  🍉

  ' <Method> '

  🐖 💳 ➡️ 🍇➡️🔡🍉 ' <Block> '

🍉

🐇 ⚽️ 🍇
  🐇🐖 🎂 ➡️ 🔡 ' <Block> '
🍉

🐇 🍤 🍇
  🐇🐖 🙋 ' <Variable> ' 🔡 ➡️ 🍇🚂➡️🔡🍉 🍇
    🍎 🍇 ' <Variable> ' 🚂 ➡️ 🔡
      🍊 😛 ' <Variable> ' ' <Number> ' ' <Block> '
      ' <Return-Statement> '
    🍉
  🍉
🍉
'
|
# tests/compilation/errorInitializer.emojic
#
'🦃 🏜 ' <Block> '

🐇 🐟 🍇
  🐈🚨🏜 🆕 ' <Block> '
  🐈🚨🏜 🆒 🍇
    🚨🔷🏜🍟
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕
  🍦 ' <Variable> ' 🔷🐟🆒

  🍊 🚥 ' <Variable> ' ' <Block> '
  ' <Else> '
  🍊 🚥 ' <Variable> ' ' <Block> '
  ' <Else> '
🍉
'
|
# tests/compilation/generics.emojic
#
'🐇 🎁 🐚 ' <Variable> ' 🔵 🍇

  ' <Declaration-Statement> '

  🐈 ✂️ =etwas T 🍇
    🍮 ' <Variable> ' =etwas
  🍉

  ' <Method> '
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
	' <Declaration-Statement> '

	🐈 🆕 @name 🔡 🍇
		🍮 ' <Variable> ' @name
	🍉

	🐖 🏷 ➡️ 🔡 ' <Block> '

	🐖 😛 ' <Variable> ' 🐕 ➡️ 👌 🍇
		🍎 😛 ' <Variable> ' 🏷 ' <Variable> '
	🍉
🍉

🐇 🐻 🐾 ' <Block> '

🏁 🍇
  🍦 ' <Variable> ' 🔷🐻🆕 ' <String> '
  🍦 ' <Variable> ' 🔷🐻🆕 ' <String> '

  🍊 😛 ' <Variable> ' ' <Variable> ' ' <Block> '
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

  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉

  🐖 💷 ➡️ 💷 🍇
    🍎 🐕
  🍉
🍉

🕊 🍕 🍇
  🐊 💷

  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 👌 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    ' <Conditional> '
    ' <Conditional> '
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
  ' <EnumValue> '
  ' <EnumValue> '
  ' <EnumValue> '

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷⏰🥐 ' <Block> '
    🍊 😛 🐕 🔷⏰🥞 ' <Block> '
    🍊 😛 🐕 🔷⏰🥓 ' <Block> '
    ' <Return-Statement> '
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

  ' <Initializer> '

  ' <Method> '
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
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉

  🐖 🌈 🍇
    🍦 ' <Variable> ' 🐕
    🍩🦋🍔 ' <Variable> '
  🍉

  🐖 🍀 🍇
    🍩🦋🍔 🐕
  🍉

  🐇' <Method> '
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
'🦃 🏜 ' <Block> '

🐇 🐟 🍇
  🐇🐖 🙋 ➡️ 🚨🏜🔡 ' <Block> '
🍉

🏁 🍇
  😀 🚇 🍩🙋🐟
🍉
'
|
# tests/compilation/babyBottleInitializer.emojic
#
'🐇 🐟 ' <Block> '

🐇 🦆 🍇
  ' <Declaration-Statement> '

  ' <Initializer> '

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
  ' <Declaration-Statement> '

  ' <Initializer> '

  🐖 🥛 ' <Variable> ' 🚀 ➡️ 🚀 ' <Block> '

  ' <Method> '
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
  ' <Declaration-Statement> '

  ' <Initializer> '

  🐖 ☄️ ➡️ 🚂 ' <Block> '

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
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 ' <Block> '

  ' <Method> '
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
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🐇 🍾 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🚀 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 ' <Block> '

  ' <Method> '
🍉

🐇 📃 🍇
  🍰 ' <Variable> ' 🍔
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍬🍾

  🐈 🆕 🍼 ' <Variable> ' 🍔 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍬🍾 ' <Block> '

  🐖 😀 🍇
    ' <Print-Statement> '
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
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

  🔂 ' <Variable> ' ' <Variable> ' ' <Block> '
  🔂 ' <Variable> ' ' <Variable> ' ' <Block> '
  🔂 ' <Variable> ' ' <Variable> ' ' <Block> '
  🔂 ' <Variable> ' ' <Variable> ' ' <Block> '
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

🕊 📱 ' <Block> '

🕊 🚁 ' <Block> '

🐇 ☎️ ' <Block> '

🕊 🔦 ' <Block> '

🏁 🍇
  🍦 ' <Variable> ' ' <ListLiteral> '
  🍰 ' <Variable> ' 🍨🐚🔡
  ' <Assignment-Statement> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷📱🆕 🍆
  🍰 ' <Variable> ' 🍨🐚📱
  ' <Assignment-Statement> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷📱🆕 🔷☎️ 🆕 🍆
  🍰 ' <Variable> ' 🍨🐚📞
  ' <Assignment-Statement> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷🔦🆕 🍆
  🍰 ' <Variable> ' 🍨🐚💡
  ' <Assignment-Statement> '

  🍦 ' <Variable> ' 🍨 🔷📱🆕 🔷🚁🆕 🍆
  🍰 ' <Variable> ' 🍨🐚🍱💡📞🍱
  ' <Assignment-Statement> '

  ' <Print-Statement> '
🍉
'
|
# tests/compilation/assignmentByCallInstanceVariable.emojic
#
'🐇 ⏲ 🍇
  ' <Declaration-Statement> '

  ' <Initializer> '

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
  ' <Declaration-Statement> '

  ' <Initializer> '

  🐖 🖋 🍇
    🍮📝 ' <Variable> ' ' <SymbolLiteral> '
  🍉

  ' <Method> '
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
  ' <Assignment-Statement> '

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

🕊 📱 ' <Block> '

🕊 ☎️ ' <Block> '

🕊 🔦 ' <Block> '

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
  ' <Assignment-Statement> '

  🍮➕ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➕ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➖ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➖ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  ' <Assignment-Statement> '

  🍮✖️ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮➗ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮👈 ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  🍮 ➕ ' <Variable> ' ' <Number> '
  😀 🔡 ' <Variable> ' ' <Number> '

  ' <Assignment-Statement> '

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
  ' <EnumValue> '
  ' <EnumValue> '
  ' <EnumValue> '

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
    🍊 😛 🐕 🔷⏰🥐 ' <Block> '
    🍊 😛 🐕 🔷⏰🥞 ' <Block> '
    🍊 😛 🐕 🔷⏰🥓 ' <Block> '
    ' <Return-Statement> '
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
    ' <Declaration-Statement> '
    🔂 ' <Variable> ' ' <ListLiteral> ' 🍇
      🍊 ❎☁️' <Variable> ' 🍇
        😀 🍺' <Variable> '
      🍉
      ' <Assignment-Statement> '
    🍉
  🍉
🍉
'
|
# tests/compilation/stringConcat.emojic
#
'🏁 ' <Block> '
'
|
# tests/compilation/gcStressTest2.emojic
#
'🕊 🍔 🍇
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🕊 🍾 🍇
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '
  ' <Declaration-Statement> '

  🐈 🆕 🍼 ' <Variable> ' 🚀 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 ' <Block> '

  ' <Method> '
🍉

🐇 📃 🍇
  🍰 ' <Variable> ' 🍔
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍬🍾

  🐈 🆕 🍼 ' <Variable> ' 🍔 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍬🍾 ' <Block> '

  🐖 😀 🍇
    ' <Print-Statement> '
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
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

  🔂 ' <Variable> ' ' <Variable> ' ' <Block> '
🍉
'
|
# tests/compilation/classInheritance.emojic
#
'🐇 🐟 ' <Block> '

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  ' <Method> '
🍉

🐇 🌕 🐡 ' <Block> '

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
  ' <Declaration-Statement> '
  🍰 ' <Variable> ' 🍨🐚🔡

  🐈 🆕 🍼 ' <Variable> ' 🍬🔡 🍼 ' <Variable> ' 🍨🐚🔡 ' <Block> '

  🐖 😀 🍇
    🍊🍦 ' <Variable> ' ' <Variable> ' ' <Block> '
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🐇 🏨 🍇
  🐊 📠🐚🚂

  ' <Initializer> '

  ' <Method> '

  🐖 🚚 ➡️ 🚂 ' <Block> '
🍉

🐇 🏣 🍇
  🐊 📠🐚🍔

  ' <Initializer> '

  ' <Method> '

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
