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
    😀 ' <String> '
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 ⌚️  📱 🍇
  ✒️ 🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
    🍉
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍕🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' ' <String> ' 🍆 👍 👍
  🍰 ' <Variable> ' 💷
  🍮 ' <Variable> ' ' <Variable> '
  😀 ' <Variable> '
🍉
'
|
# tests/compilation/if.emojic
#
'🏁 🍇
  🍊 👍 🍇
    😀 ' <String> '
  🍉

  🍊 👎 🍇
    😀 ' <String> '
  🍉

  🍊 👍 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 👎 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 👍 🍇
    😀 ' <String> '
  🍉
  🍋 👍 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 👎 🍇
    😀 ' <String> '
  🍉
  🍋 👍 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 👎 🍇
    😀 ' <String> '
  🍉
  🍋 👎 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 👎 🍇
    😀 ' <String> '
  🍉
  🍋 👎 🍇
    😀 ' <String> '
  🍉
  🍋 👍 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 👍 🍇
    😀 ' <String> '
  🍉
  🍋 👎 🍇
    😀 ' <String> '
  🍉
  🍋 👍 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 👎 🍇
    😀 ' <String> '
  🍉
  🍋 👎 🍇
    😀 ' <String> '
  🍉
  🍋 👎 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🕊 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🚂 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🕊 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🍔 🍇
    😀 🍪 ' <String> ' 🍪
    😀 ' <Variable> '
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' ' <String> ' 🍆
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 📠🐚🚂
  🍮 ' <Variable> ' 🔷🏨🆕

  ⏱ ' <Variable> ' ' <Number> '
  😀🔡 🚚 ' <Variable> ' ' <Number> '

  🍰 ' <Variable> ' 📠🐚🍔
  🍮 ' <Variable> ' 🔷🏣🆕

  ⏱ ' <Variable> ' 🔷🍔🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' ' <String> ' ' <String> ' 🍆
  😀 🚚 ' <Variable> '
🍉
'
|
# tests/compilation/sequenceTypes.emojic
#
'🌍 🐇 🤘🏻 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉

🌍 🐇 🤘🏿 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉

🌍 🐇 🇦🇹 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉


🌍 🐇 🇦🇺 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉

🌍 🐇 👨‍👩‍👦‍👦 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉

🌍 🐇 👨‍👩‍👧‍👧 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 ' <String> '
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
        🍎 🍪 ' <String> ' ' <Variable> '🍪
      🍉
      🍎 🍪 ' <String> ' ' <Variable> '🍪
    🍉
  🍉

  👴 Returns a functional ID card
  🐇🐖 👌🏾 ' <Variable> ' 🔡 ' <Variable> ' 🚂 ' <Variable> ' 🔡 ' <Variable> ' 🚀 ➡️ 🍇➡️🔡🍉 🍇
    🍊 ⬅️ ' <Variable> ' ' <Number> ' 🍇
      🍎 🍇 ➡️🔡 🍎 🍪 ' <String> ' ' <Variable> ' ' <String> ' ' <Variable> ' 🍪 🍉
    🍉
		🍎 🍇 ➡️🔡 🍎 🍪 ' <Variable> ' ' <String> ' ' <Variable> '  ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🍪 🍉
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
    😀 ' <Variable> '
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
    🍮 ' <Variable> ' 🔷🌼🆕 🍪 ' <Variable> ' ' <String> ' 🍪 ' <Number> '
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
  😀 ' <Variable> '
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
    😀 ' <Variable> '
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪' <String> ' 🔡 ' <Variable> ' 🍪
  🍉

  🥑 ' <Variable> ' 🍩🙅🐟 🍇
    😀 ' <Variable> '
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪' <String> ' 🔡 ' <Variable> ' 🍪
  🍉

  🥑 ' <Variable> ' 🍩🙅‍♂️🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪' <String> ' 🔡 ' <Variable> ' 🍪
  🍉

  🥑 ' <Variable> ' 🍩🙋‍♂️ 🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪' <String> ' 🔡 ' <Variable> ' 🍪
  🍉
🍉
'
|
# tests/compilation/gcStressTest1.emojic
#
'🐇 😇 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 🦆 🍇
    😀 ' <Variable> '
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
    🍮 ' <Variable> ' 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 🦆 🍇
    😀 ' <Variable> '
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
  😀 ' <String> '
  😀 ' <String> '
  😀 ' <String> '
🍉
'
|
# tests/compilation/piglatin.emojic
#
'🐋 🔡 🍇
  🐖 🐷 ➡️ 🔡 🍇
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' ' <Number> '
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' 🐔 🐕
    🍎 🍪 ' <Variable> ' ' <Variable> ' ' <String> ' 🍪
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
  🌮 Returns a Swiss German description 🌮
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
		😀 ' <String> '
	🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <String> '
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
    😀 ' <String> '
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
    😀 ' <Variable> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    😀 ' <String> '
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
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    😀 ' <String> '
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
		😀 ' <String> '
	🍉

🍉

🐇 😴 😮 🍇

	🔑 🐈 🤗 🍇
		😀 ' <String> '
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		😀 ' <String> '
		🐐 🆕
	🍉

🍉

🐇 👮 😴 🍇

	🐈 😵 🍇
		😀 ' <String> '
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		😀 ' <String> '
		🐐 🆕
	🍉

	🔑 🐈 🤗 🍇
		😀 ' <String> '
		🐐 🆕
	🍉

	🐈 🤐 🍇
		😀 ' <String> '
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
    😀 ' <String> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉

🐇 🐋 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉

🐇 🐠 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    😀 ' <String> '
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
          😀 ' <String> '
          💸 ' <Variable> ' ' <Number> '
        🍉
        🔓 ' <Variable> '
      🍉
    🍉
  🍉

  🔂 ' <Variable> ' ' <Variable> ' 🍇
    🛂 ' <Variable> '
  🍉

  😀 🔡 💶 ' <Variable> ' ' <Number> ' 👴 Print the balance
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
    😀 ' <String> '
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
    😀 ' <String> '
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
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
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥛🐚🚂 🍇
    😀 ' <String> '
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
    😀 ' <Variable> '
    😀 ' <Variable> '
    😀 ' <Variable> '
    😀 ' <Variable> '
    😀 ' <Variable> '
    😀 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🏠🆕 ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> ' ' <String> '
  😀 ' <Variable> '

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
    😀 ' <Variable> '
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
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🍪
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
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
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 ' <String> '
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

  🍻 😀 ' <Variable> '
  🍻 😀 🍻 📝 ' <Variable> ' 🔟,

  🍰 ' <Variable> ' 🍬🔡
  🍮 ' <Variable> ' ⚡️

  🍻 😀 ' <Variable> '
  🍻 😀 🍻 📝 ' <Variable> ' 🔟,

  😀 ' <String> '
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
      😀 ' <String> '
    🍉
    🍓 🍇
      😀 ' <String> '
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
    😀 ' <Variable> '
  🍉
🍉

🕊 📅 🍇
  🐇🐖 🎆 🍇
    😀 ' <String> '
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
    😀 ' <String> '
  🍉
🍉

🔻 💧 🔶🎅🎁
🔻 🌼 🍨
🔻 🔶🍣🍐 🌼

🏁 🍇
  🍩🙂🔶🎅🎁
  🍩🙂💧

  🍰 ' <Variable> ' 🔶🍣🍐🐚🔡
  🍮 ' <Variable> ' 🍨 ' <String> ' ' <String> ' ' <String> ' ' <String> ' 🍆
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
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉
🍉

🐇 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
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
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
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
    😀 ' <Variable> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    😀 ' <String> '
  🍉

  ✒️ 🐖 🙋 🍇
    😀 ' <String> '
  🍉
🍉

🐇 🌕 🐡 🍇
  ✒️ 🐖 🥛 🍇
    😀 ' <String> '
  🍉

  ✒️ 🐖 🙋 🍇
    😀 ' <String> '
  🍉

  🐖 💎 🍇
    😀 ' <String> '
  🍉

  🐖 🥞 🍇
    😀 ' <String> '
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
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' ' <Variable> ' 🍪
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
    😀 ' <String> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 ☁️  🍩🐦🥐 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍮 ' <Variable> ' ' <String> '
  🍮 ' <Variable> ' ' <Number> '
  🍮 ' <Variable> ' 🔷🥐🆕 👍 ' <String> ' ' <Number> '
  🍮 ' <Variable> ' ' <String> '

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉

  🍊 ☁️  🍩🐤🥐 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
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
  😀 🍭 ' <Variable> ' 🔟!
  😀 🍭 ' <Variable> ' 🔟?

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
    😀 ' <Variable> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    😀 ' <String> '
  🍉
🍉

🕊 🥐 🍇
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' ' <Variable> ' 🍪
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
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🍪
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
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐡  🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  🍇
    😀 ' <String> '
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' ⏰  🍇
    😀 ' <String> '
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
    😀 ' <String> '
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
    😀 🍪' <String> ' ' <Variable> '🍪
  🍉

  🍭 ' <Variable> ' ' <String> '
  🍭 ' <Variable> ' ' <String> '
  🍭 ' <Variable> ' ' <String> '

  😀 ' <String> '
🍉
'
|
# tests/compilation/callable.emojic
#
'🏁 🍇
  🍦 ' <Variable> ' ' <String> '

  🍦 ' <Variable> ' 🌶 📝 ' <Variable> '

  😀 🍭 ' <Variable> ' 🔟!
  😀 🍭 ' <Variable> ' 🔟?

  🍦 ' <Variable> ' 🍇 ' <Variable> ' 🔡 ➡️ 🔡
    😀 🍪' <String> ' ' <Variable> '🍪

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
        🍎 🍪 ' <String> ' ' <Variable> '🍪
      🍉
      🍎 🍪 ' <String> ' ' <Variable> '🍪
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
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
  🍉
  🍊 🚥 ' <Variable> ' 🍇
    😀 ' <String> '
  🍉
  🍓 🍇
    😀 ' <String> '
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
    😀 ' <String> '
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
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
  🍦 ' <Variable> ' 🔷🍔🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' 🍆
  🍦 ' <Variable> ' 💷 ' <Variable> '
  😀 notes

  🍦 ' <Variable> ' 🔷🍕🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' ' <String> ' 🍆 👍 👍
  🍦 ' <Variable> ' 💷 ' <Variable> '
  😀 ' <Variable> '
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
  😀 🍪 ' <String> ' 🔡' <Variable> ' 🍪

  🍦 ' <Variable> ' 🔷⏰🥐
  😀 🍪 ' <String> ' 🔡' <Variable> ' 🍪
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
    😀 ' <String> '
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
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
  🍦 ' <Variable> ' 🔷🍔🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' 🍆
  😀 ' <Variable> '
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
    😀 ' <Variable> '
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
    😀 ' <Variable> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  ✒️ 🐖 🙋 🍇
    🐿 🙋
    😀 ' <String> '
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
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' ' <Variable> ' 🍪
    🍊 ' <Variable> ' 🍇
      😀 ' <String> '
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🥐🆕 👍 ' <String> ' ' <Number> '
  🍦 ' <Variable> ' 🔷🥐🆕 👍 ' <String> ' ' <Number> '
  🍭 🍇
    😀 ' <Variable> '
    😀 ' <Variable> '
    🍦 ' <Variable> ' 🔷🥐🆕 👎 ' <String> ' ' <Number> '
    😀 ' <Variable> '
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
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
    😀 🍪 ' <String> ' ' <Variable> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
    🍉
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <Variable> '
    🍉
  🍉

  🐇🐖 🤒 ' <Variable> ' 🍨🐚📃 🍇
    🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪 🍨 ' <String> ' ' <String> ' 🍆 ⚡️  🔷🍾🆕 ' <Number> ' 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪  🍨 ' <String> ' ' <String> ' ' <String> ' 🍆 ' <String> ' 🔷🍾🆕 ' <Number> ' 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪  🍨 ' <String> ' 🍆 ' <String> ' ⚡️
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪  🍨 ' <String> ' ' <String> ' ' <String> ' ' <String> ' 🍆 ' <String> ' ⚡️
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
    😀 ' <Variable> '
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🔂 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
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
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉
🍉

🕊 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍨 ' <String> ' ' <String> ' 🍆
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

  😀 ' <String> '
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
    🍮📝 ' <Variable> ' 🔟5
  🍉

  🐖 😀 🍇
    😀 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷⏲🆕
  📆 ' <Variable> '
  📈 ' <Variable> '
  😀 ' <Variable> '

  🍦 ' <Variable> ' 🔷📃🆕
  🖋 ' <Variable> '
  😀 ' <Variable> '
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
    😀 ' <String> '
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🕊 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 ' <String> ' ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 ' <String> '
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
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

	🍮📝 ' <Variable> ' 🔟1
	😀 ' <Variable> '

	🍮📝 ' <Variable> ' 🔟2
	😀 ' <Variable> '
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
    🍎 🔷⏰🥓 👴 Default to bacon
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
  😀 🍪 ' <String> ' 🔡' <Variable> ' 🍪
🍉
'
|
# tests/compilation/variableInitAndScoping.emojic
#
'🏁 🍇
  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    😀 🍪' <String> ' 🔡' <Variable> ' ' <Number> '🍪
    🍰 ' <Variable> ' 🍬🔡
    🔂 ' <Variable> ' 🍨 ' <String> ' ' <String> ' ' <String> ' 🍆 🍇
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
  😀 🍪' <String> ' ' <String> '  ' <String> ' ' <String> '🍪
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
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
    😀 🍪 ' <String> ' ' <Variable> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
    🍉
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <Variable> '
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍨🐚📃🐸

  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪 🍨 ' <String> ' ' <String> ' 🍆 ⚡️  🔷🍾🆕 ' <Number> ' 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪  🍨 ' <String> ' ' <String> ' ' <String> ' 🍆 ' <String> ' 🔷🍾🆕 ' <Number> ' 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪  🍨 ' <String> ' 🍆 ' <String> ' ⚡️
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪' <String> ' 🔡 ' <Variable> ' ' <Number> '🍪  🍨 ' <String> ' ' <String> ' ' <String> ' ' <String> ' 🍆 ' <String> ' ⚡️
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
    😀 ' <Variable> '
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
    😀 ' <Variable> '
  🍉
🍉

🐇 🐡 🐟 🍇
  🐈 🆕 🍇
    🐐 🆕 ' <String> '
  🍉

  🐖 🥛 🍇
    😀 ' <String> '
  🍉
🍉

🐇 🌕 🐡 🍇
  🐖 💎 🍇
    😀 ' <String> '
  🍉

  🐖 🥞 🍇
    😀 ' <String> '
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
      😀 🍪 ' <String> ' ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' ' <String> '
  🍉
🍉

🐇 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🚂 🍇
    😀 🍪 ' <String> ' 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🐇 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🍔 🍇
    😀 🍪 ' <String> ' 🍪
    😀 ' <Variable> '
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' ' <String> ' 🍆
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 📠🐚🚂
  🍮 ' <Variable> ' 🔷🏨🆕

  ⏱ ' <Variable> ' ' <Number> '
  😀🔡 🚚 ' <Variable> ' ' <Number> '

  🍰 ' <Variable> ' 📠🐚🍔
  🍮 ' <Variable> ' 🔷🏣🆕

  ⏱ ' <Variable> ' 🔷🍔🆕 ' <String> ' 🍨 ' <String> ' ' <String> ' ' <String> ' ' <String> ' 🍆
  😀 🚚 ' <Variable> '
🍉
'
		}
	}
