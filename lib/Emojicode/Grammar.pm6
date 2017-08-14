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
    😀 🔤This method is never called🔤
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤2493928289293🔤
  🍉
🍉

🐇 ⌚️  📱 🍇
  ✒️ 🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on display at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤5969202056🔤
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 ' <Variable> ' 💡 🍇
    🔦 ' <Variable> ' ' <Number> '
  🍉

  🐇🐖 📞 ' <Variable> ' 📞 🍇
    📞 ' <Variable> ' 🔤2929294757🔤
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
      😀 🍪 🔤Pizza name: 🔤 ' <Variable> ' 🍪
    🍉
    🍊 ' <Variable> ' 🍇
      😀 🔤is extra large🔤
    🍉
    🍊 ' <Variable> ' 🍇
      😀 🔤is extra hot🔤
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍕🆕 🔤Romana🔤 🍨 🔤tomato🔤 🔤mozzarella🔤 🔤anchovies🔤 🍆 👍 👍
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
    😀 🔤α🔤
  🍉

  🍊 👎 🍇
    😀 🔤β🔤
  🍉

  🍊 👍 🍇
    😀 🔤γ🔤
  🍉
  🍓 🍇
    😀 🔤γ2🔤
  🍉

  🍊 👎 🍇
    😀 🔤δ🔤
  🍉
  🍓 🍇
    😀 🔤δ2🔤
  🍉

  🍊 👍 🍇
    😀 🔤ε🔤
  🍉
  🍋 👍 🍇
    😀 🔤ε2🔤
  🍉
  🍓 🍇
    😀 🔤ε3🔤
  🍉

  🍊 👎 🍇
    😀 🔤ζ🔤
  🍉
  🍋 👍 🍇
    😀 🔤ζ2🔤
  🍉
  🍓 🍇
    😀 🔤ζ3🔤
  🍉

  🍊 👎 🍇
    😀 🔤η🔤
  🍉
  🍋 👎 🍇
    😀 🔤η2🔤
  🍉
  🍓 🍇
    😀 🔤η3🔤
  🍉

  🍊 👎 🍇
    😀 🔤θ🔤
  🍉
  🍋 👎 🍇
    😀 🔤θ2🔤
  🍉
  🍋 👍 🍇
    😀 🔤θ3🔤
  🍉
  🍓 🍇
    😀 🔤θ4🔤
  🍉

  🍊 👍 🍇
    😀 🔤ι🔤
  🍉
  🍋 👎 🍇
    😀 🔤ι2🔤
  🍉
  🍋 👍 🍇
    😀 🔤ι3🔤
  🍉
  🍓 🍇
    😀 🔤ι4🔤
  🍉

  🍊 👎 🍇
    😀 🔤κ🔤
  🍉
  🍋 👎 🍇
    😀 🔤κ2🔤
  🍉
  🍋 👎 🍇
    😀 🔤κ3🔤
  🍉
  🍓 🍇
    😀 🔤κ4🔤
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
      😀 🍪 🔤Burger name: 🔤 ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
  🍉
🍉

🕊 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🚂 🍇
    😀 🍪 🔤Requested 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🕊 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🍔 🍇
    😀 🍪 🔤Requested 🔤 🍪
    😀 ' <Variable> '
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 🔤Triple Burger🔤 🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 📠🐚🚂
  🍮 ' <Variable> ' 🔷🏨🆕

  ⏱ ' <Variable> ' ' <Number> '
  😀🔡 🚚 ' <Variable> ' ' <Number> '

  🍰 ' <Variable> ' 📠🐚🍔
  🍮 ' <Variable> ' 🔷🏣🆕

  ⏱ ' <Variable> ' 🔷🍔🆕 🔤Standard Burger🔤 🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆
  😀 🚚 ' <Variable> '
🍉
'
|
# tests/compilation/sequenceTypes.emojic
#
'🌍 🐇 🤘🏻 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤Skin Type 1-2🔤
  🍉
🍉

🌍 🐇 🤘🏿 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤Skin Type 6🔤
  🍉
🍉

🌍 🐇 🇦🇹 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤Austria🔤
  🍉
🍉


🌍 🐇 🇦🇺 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤Australia🔤
  🍉
🍉

🌍 🐇 👨‍👩‍👦‍👦 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤two sons🔤
  🍉
🍉

🌍 🐇 👨‍👩‍👧‍👧 🍇
  🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤two daugthers🔤
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
        🍎 🍪 🔤Have a good lunch, 🔤 ' <Variable> '🍪
      🍉
      🍎 🍪 🔤Hello, 🔤 ' <Variable> '🍪
    🍉
  🍉

  👴 Returns a functional ID card
  🐇🐖 👌🏾 ' <Variable> ' 🔡 ' <Variable> ' 🚂 ' <Variable> ' 🔡 ' <Variable> ' 🚀 ➡️ 🍇➡️🔡🍉 🍇
    🍊 ⬅️ ' <Variable> ' ' <Number> ' 🍇
      🍎 🍇 ➡️🔡 🍎 🍪 🔤It’s a kid born in 🔤 ' <Variable> ' 🔤 ' <Variable> ' 🔤 ' <Variable> ' 🍪 🍉
    🍉
		🍎 🍇 ➡️🔡 🍎 🍪 ' <Variable> ' 🔤: Born in 🔤 ' <Variable> '  🔤 and 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤 meters tall.🔤 🍪 🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍩🙋🍤 🔤Florence🔤
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '

  🍦 ' <Variable> ' 🍩🙋🍤 🔤Violet🔤
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '
  😀 🍭 ' <Variable> ' ' <Number> '

	🍦 ' <Variable> ' 🍩👌🏾🍤 🔤Alistair🔤 ' <Number> '	🔤Cambridge🔤 ' <Number> '
	😀 🍭 ' <Variable> '

	🍦 ' <Variable> ' 🍩👌🏾🍤 🔤Zach🔤 ' <Number> ' 🔤Derry🔤 ' <Number> '
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
    🍮 ' <Variable> ' 🔷🌼🆕 🍪 ' <Variable> ' 🔤_2🔤 🍪 ' <Number> '
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
    🍮 ' <Variable> ' 🔷⚫️🆕 🔤sport🔤 ' <Number> '
  🍉

  🐖 🥐 ➡️ 🔡 🍇
    🍎 🍐 ' <Variable> '
  🍉

  🐖 🌼 ➡️ ⚖️ 🍇
    🍎 🔷⚫️🆕 ' <Variable> ' 🌼 ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🌼🆕 🔤Philadelphia🔤 ' <Number> '
  🍦 ' <Variable> ' 🔷🌸🆕 🔤Miami🔤
  😀 ' <Variable> '
  😀 🤣 ' <Variable> '

  😀 🍐 🔷💐🆕 🔤NY🔤
  🍦 ' <Variable> ' 🔷💐🆕 🔤LA🔤
  😀 🍐 ' <Variable> '
  😀 🌼 ' <Variable> '

  🍦 ' <Variable> ' 🔷🌷🆕 🔤FL🔤
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
  🍦 ' <Variable> ' 🔷 🎁🐚🔡 ✂️ 🔤week🔤

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
      🍎 🔤Too low on charge🔤
    🍉
    🍊 😛 🐕 🔷🏜🍟 🍇
      🍎 🔤Out for lunch🔤
    🍉
    🍎 🔤🔤
  🍉
🍉

🐇 🐟 🍇
  🐇🐖 🙅 ➡️ 🚨🏜🔡 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋 ➡️ 🚨🏜🔡 🍇
    🍎 🔤I see you coming and I don\'t wanna know your name🔤
  🍉

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🍟
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🍎 🔤I see you coming and I don\'t wanna know your name🔤
  🍉
🍉

🏁 🍇
  🥑 ' <Variable> ' 🍩🙋🐟 🍇
    😀 ' <Variable> '
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪🔤An error occured: 🔤 🔡 ' <Variable> ' 🍪
  🍉

  🥑 ' <Variable> ' 🍩🙅🐟 🍇
    😀 ' <Variable> '
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪🔤An error occured: 🔤 🔡 ' <Variable> ' 🍪
  🍉

  🥑 ' <Variable> ' 🍩🙅‍♂️🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪🔤An error occured: 🔤 🔡 ' <Variable> ' 🍪
  🍉

  🥑 ' <Variable> ' 🍩🙋‍♂️ 🐟 🍇
    😀 🍺🔲 ' <Variable> ' 🔡
  🍉
  🍓 ' <Variable> ' 🍇
    😀 🍪🔤An error occured: 🔤 🔡 ' <Variable> ' 🍪
  🍉
🍉
'
|
# tests/compilation/gcStressTest1.emojic
#
'🐇 😇 🍇
  🍰 ' <Variable> ' 🔡

  🐈 🆕 ' <Variable> ' 🚂 🍇
    🍮 ' <Variable> ' 🍪🔤Music is a world within itself 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
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
    🍮 ' <Variable> ' 🍪🔤Music is a world within itself 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
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
  😀 🔤Hello world!🔤
  😀 🔤Привет мир!🔤
  😀 🔤你好，世界！🔤
🍉
'
|
# tests/compilation/piglatin.emojic
#
'🐋 🔡 🍇
  🐖 🐷 ➡️ 🔡 🍇
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' ' <Number> '
    🍦 ' <Variable> ' 🔪 🐕 ' <Number> ' 🐔 🐕
    🍎 🍪 ' <Variable> ' ' <Variable> ' 🔤ay🔤 🍪
  🍉
🍉

🏁 🍇
  😀 🐷 🔤cat🔤
  😀 🐷 🔤development🔤
  😀 🐷 🔤computer🔤
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
      🍎 🔤Schocki🔤
    🍉
    🍊 😛 🐕 🔷🍴🍭 🍇
      🍎 🔤Schleckstängeli🔤
    🍉
    🍊 😛 🐕 🔷🍴🥐 🍇
      🍎 🔤Gipfeli🔤
    🍉
    🍎 🔤🔤
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
		😀 🔤hooray🔤
	🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    😀 🔤hooray🔤
  🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    😀 🔤hooray🔤
  🍉
  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    😀 🔤hooray🔤
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

  😀 🔡 🦀 ' <Variable> ' 🔤asdfsadf🔤 ' <Number> '
🍉
'
|
# tests/compilation/included.emojic
#
'🕊 🐤 🍇
  🐇🐖 💐 🍇
    😀 🔤If I let you go aside🔤
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
    🐐 🆕 🔤Christopher🔤
  🍉

  🐖 🥛 🍇
    😀 🔤I like milk🔤
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 🔵
  🍮 ' <Variable> ' 🔷🐟🆕 🔤Shawn🔤
  🍰 ' <Variable> ' 🔵
  🍮 ' <Variable> ' 🔤Jane🔤
  🍰 ' <Variable> ' 🐟
  🍮 ' <Variable> ' 🔷🐡🆕

  🙋 🍺 🔲 ' <Variable> ' 🐟
  😀 🍺 🔲 ' <Variable> ' 🔡
  🥛 🍺 🔲 ' <Variable> ' 🐡

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🔡  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    😀 🔤Oops🔤
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
		😀 🔤I\'m in 😮🔤
	🍉

🍉

🐇 😴 😮 🍇

	🔑 🐈 🤗 🍇
		😀 🔤I\'m in 🤗🔤
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		😀 🔤I\'m in 😴🔤
		🐐 🆕
	🍉

🍉

🐇 👮 😴 🍇

	🐈 😵 🍇
		😀 🔤I\'m in 😵 sub🔤
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		😀 🔤I\'m in 😴 sub🔤
		🐐 🆕
	🍉

	🔑 🐈 🤗 🍇
		😀 🔤I\'m in 🤗 sub🔤
		🐐 🆕
	🍉

	🐈 🤐 🍇
		😀 🔤I\'m in 🤐 sub🔤
		🐐 🆕
	🍉

🍉

🏁 🍇
	🍩🐸😮 🔤test🔤
	🍩🐸😴 🔤test2🔤
	🍩🐸👮 🔤test2🔤
🍉
'
|
# tests/compilation/reflection.emojic
#
'🐇 🐟 🍇
  🔑 🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤I’m a fish.🔤
  🍉
🍉

🐇 🐡 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    😀 🔤I’m a blowfish.🔤
  🍉
🍉

🐇 🐋 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    😀 🔤I’m a wale.🔤
  🍉
🍉

🐇 🐠 🐟 🍇
  🔑 🐈 🆕 🍇 🐐 🆕 🍉

  ✒️  🐖 🙋 🍇
    😀 🔤I’m a tropical fish.🔤
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
          😀 🔤Money, money, money – Must be funny🔤
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
  🍦 ' <Variable> ' 🔷🕵🐑 🔤Arthur Lemming🔤
  🍦 ' <Variable> ' 💳 ' <Variable> '

  😀 🍭 ' <Variable> '

  🏷 ' <Variable> ' 🔤Sherlock Holmes🔤

  😀 🍭 ' <Variable> '

  🏷 ' <Variable> ' 🔤Thomas Magnum🔤

  😀 🍭 ' <Variable> '
🍉
'
|
# tests/compilation/namespace.emojic
#
'📦 s 💊

🐇 🔶🎅🎁 🍇
  🐇🐖 🙂 🍇
    😀 🔤The course of true love never did run smooth.🔤
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
    😀 🔤This method is never called🔤
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤2493928289293🔤
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤5969202056🔤
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 ' <Variable> ' 💡 🍇
    🔦 ' <Variable> ' ' <Number> '
  🍉

  🐇🐖 📞 ' <Variable> ' 📞 🍇
    📞 ' <Variable> ' 🔤2929294757🔤
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
'📜 🔤included.emojic🔤

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
  🍮 ' <Variable> ' 🔷🥛🐚🔡🆕 🔤moment🔤

  😀 🔡 🥔 🍺 🔲 ' <Variable> ' 🥛🐚🚂 ' <Number> '
  😀 🥔 🍺 🔲 ' <Variable> ' 🥛🐚🔡

  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🦑🐚🔡🆕 🔤rest🔤 🔤assured🔤

  😀 👈 🍺 🔲 ' <Variable> ' 🦑🐚🔡
  😀 👉 🍺 🔲 ' <Variable> ' 🦑🐚🔡

  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥛🐚🔡 🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥛🐚🚂 🍇
    😀 🔤Oops🔤
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
  🍦 ' <Variable> ' 🔷🏠🆕 🔤Infinite Loop🔤 🔤1🔤 🔤Cupertino🔤 🔤95014🔤 🔤California🔤 🔤USA🔤
  😀 ' <Variable> '

  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🏠🆕 🔤Dr. Karl Renner-Ring🔤 🔤3🔤 🔤Wien🔤 🔤1017🔤 🔤Wien🔤 🔤Österreich🔤

  🍰 ' <Variable> ' 🍬🏠
  🍮 ' <Variable> ' 🔲 ' <Variable> ' 🏠
  😀🍺' <Variable> '

  🍮 ' <Variable> ' 🔷🏠🆕 🔤Boulevard du Parc🔤 🔤1🔤 🔤Serris/Coupvray🔤 🔤77700🔤 🔤Thorigny-sur-Marne🔤 🔤France🔤
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
    🍮 ' <Variable> ' 🔤Voyager🔤
  🍉

  🖍 🐖 😋 ' <Variable> ' 🔡 🍇
    🍮 ' <Variable> ' ' <Variable> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🌼🆕 🔤Discovery🔤
  🍮 ' <Variable> ' ' <Variable> '
  🌵 ' <Variable> '
  😣 ' <Variable> '
  🌵 ' <Variable> '
  🌵 ' <Variable> '
  🍮 ' <Variable> ' ' <Variable> '
  🌵 ' <Variable> '
  😋 ' <Variable> ' 🔤Enterprise🔤
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
    😀 🍪 🔤You ordered a 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤kg pita filled with 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤 tomatoes and 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤g of chicken.🔤 🍪
    🍊 ' <Variable> ' 🍇
      😀 🔤There’s also salad in your pita!🔤
    🍉
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🔡
  🍰 ' <Variable> ' 🍬🥙
  🍰 ' <Variable> ' 🍬🥙

  🍮 ' <Variable> ' 🔤Did🔤
  🍮 ' <Variable> ' ⚡️
  🍮 ' <Variable> ' 🔤hear🔤
  🍮 ' <Variable> ' 🔷🥙🆕 ' <Number> ' 👎 ' <Number> ' ' <Number> '
  🍮 ' <Variable> ' ⚡️

  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
    😀 ' <Variable> '
  🍉
  🍓 🍇
    😀 🔤no🔤
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
  🍮 ' <Variable> ' 🔤I said a hip hop🔤

  🍻 😀 ' <Variable> '
  🍻 😀 🍻 📝 ' <Variable> ' 🔟,

  🍰 ' <Variable> ' 🍬🔡
  🍮 ' <Variable> ' ⚡️

  🍻 😀 ' <Variable> '
  🍻 😀 🍻 📝 ' <Variable> ' 🔟,

  😀 🔤Thanks for your attention.🔤
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
      😀 🔤GLEICH🔤
    🍉
    🍓 🍇
      😀 🔤NICHT GLEICH🔤
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

  😀 🔡 🦀 ' <Variable> ' 🔤asdfsadf🔤 ' <Number> '
🍉
'
|
# tests/compilation/captureTypeMethod.emojic
#
'🐇 🕵 🍇
  🍰 ' <Variable> ' 🔡

  🔑🐈 🆕 🍼 ' <Variable> ' 🔡 🍇🍉

  🐇🐖 🥚 ➡️  🕵 🍇
    🍎 🔷🐕🆕 🔤George🔤
  🍉

  🐖 😀 🍇
    😀 ' <Variable> '
  🍉
🍉

🕊 📅 🍇
  🐇🐖 🎆 🍇
    😀 🔤Happy New Year!🔤
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
    😀 🔤Are we crazy?🔤
  🍉
🍉

🔻 💧 🔶🎅🎁
🔻 🌼 🍨
🔻 🔶🍣🍐 🌼

🏁 🍇
  🍩🙂🔶🎅🎁
  🍩🙂💧

  🍰 ' <Variable> ' 🔶🍣🍐🐚🔡
  🍮 ' <Variable> ' 🍨 🔤Up🔤 🔤there🔤 🔤in🔤 🔤utopia🔤 🍆
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
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 ' <Variable> ' 🍪
  🍉
🍉

🐇 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on spot light at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤Using radio network to call 🔤 ' <Variable> ' 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 🎇 ' <Variable> ' 🍱📞💡🍱 🍇
    📞 ' <Variable> ' 🔤2929294757🔤
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
    🍎 🔤I see you coming and I don\'t wanna know your name🔤
  🍉

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🍎 🔤I see you coming and I don\'t wanna know your name🔤
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍩🙋🐟
  🍦 ' <Variable> ' 🍩🙅🐟
  🍦 ' <Variable> ' 🍩🙅‍♂️🐟
  🍦 ' <Variable> ' 🍩🙋‍♂️🐟

  🍊 🚥 ' <Variable> ' 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤no error🔤
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤no error🔤
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤no error🔤
  🍉

  🍊 🚥 ' <Variable> ' 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤no error🔤
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
    🐐 🆕 🔤Christopher🔤
  🍉

  🐖 🥛 🍇
    😀 🔤I like milk🔤
  🍉

  ✒️ 🐖 🙋 🍇
    😀 🔤I won’t give my name🔤
  🍉
🍉

🐇 🌕 🐡 🍇
  ✒️ 🐖 🥛 🍇
    😀 🔤I don’t like milk🔤
  🍉

  ✒️ 🐖 🙋 🍇
    😀 🔤I’m the moon🔤
  🍉

  🐖 💎 🍇
    😀 🔤Gem’s are very valuable🔤
  🍉

  🐖 🥞 🍇
    😀 🔤Pancakes are tasty🔤
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕 🔤Shawn🔤
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
    😀 🍪 🔤You ordered a 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤kg croissant filled with 🔤 ' <Variable> ' 🍪
    🍊 ' <Variable> ' 🍇
      😀 🔤The croissant is vegan!🔤
    🍉
  🍉

  🐇 🐖 🐤 ➡️  ⚪️ 🍇
    🍎 🔤asdfsadf🔤
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
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️  🍩🐦🥐 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍮 ' <Variable> ' 🔤test🔤
  🍮 ' <Variable> ' ' <Number> '
  🍮 ' <Variable> ' 🔷🥐🆕 👍 🔤vanilla🔤 ' <Number> '
  🍮 ' <Variable> ' 🔤234🔤

  🍊 ☁️ ' <Variable> ' 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ ' <Variable> ' 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️  🍩🐤🥐 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
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
  🍦 ' <Variable> ' 🌶📝 🔤Florence🔤
  😀 🍭 ' <Variable> ' 🔟!
  😀 🍭 ' <Variable> ' 🔟?

	🍦 ' <Variable> ' 🔷🕵🆕 🔤Miss Marple🔤
	🍦 ' <Variable> ' 🌶🏷 d
	🍦 ' <Variable> ' 🌶😀d
	🍭 ' <Variable> '
	🍭 ' <Variable> ' 🔤Hercule Poirot🔤
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
    🐐 🆕 🔤Christopher🔤
  🍉

  🐖 🥛 🍇
    😀 🔤I like milk🔤
  🍉
🍉

🕊 🥐 🍇
  🍰 ' <Variable> ' 👌
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 👌 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤kg croissant filled with 🔤 ' <Variable> ' 🍪
    🍊 ' <Variable> ' 🍇
      😀 🔤The croissant is vegan!🔤
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
    😀 🍪 🔤You ordered a 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤kg pita filled with 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤 tomatoes and 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤g of chicken.🔤 🍪
    🍊 ' <Variable> ' 🍇
      😀 🔤There’s also salad in your pita!🔤
    🍉
  🍉
🍉

🦃 ⏰ 🍇
  🔘🥓
  🔘🥞
  🔘🥐

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷⏰🥐 🍇
      🍎 🔤Croissant🔤
    🍉
    🍊 😛 🐕 🔷⏰🥞 🍇
      🍎 🔤Pancakes🔤
    🍉
    🍊 😛 🐕 🔷⏰🥓 🍇
      🍎 🔤Bacon🔤
    🍉
    🍎 🔤🔤
  🍉
🍉


🏁 🍇
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🐟🆕 🔤Shawn🔤
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔤Jane🔤
  🍰 ' <Variable> ' ⚪️
  🍮 ' <Variable> ' 🔷🥐🆕 👎 🔤chocolate🔤 ' <Number> '
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
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐟  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🐡  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' 🥐  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 ' <Variable> ' 🔲 ' <Variable> ' ⏰  🍇
    😀 🔤Oops🔤
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
    😀 🔤I’m a fish.🔤
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

  🍮 ' <Variable> ' 🔤Did🔤
  🍮 ' <Variable> ' ⚡️
  🍮 ' <Variable> ' 🔤hear🔤

  😀 🍺' <Variable> '
  😀 🍺' <Variable> '
🍉
'
|
# tests/compilation/closureBasic.emojic
#
'🏁 🍇
  🍦 ' <Variable> ' 🍇 ' <Variable> ' 🔡
    😀 🍪🔤It is a plesaure to welcome the honorable 🔤 ' <Variable> '🍪
  🍉

  🍭 ' <Variable> ' 🔤Hans🔤
  🍭 ' <Variable> ' 🔤Gustav🔤
  🍭 ' <Variable> ' 🔤Linda🔤

  😀 🔤End of program🔤
🍉
'
|
# tests/compilation/callable.emojic
#
'🏁 🍇
  🍦 ' <Variable> ' 🔤Krass🔤

  🍦 ' <Variable> ' 🌶 📝 ' <Variable> '

  😀 🍭 ' <Variable> ' 🔟!
  😀 🍭 ' <Variable> ' 🔟?

  🍦 ' <Variable> ' 🍇 ' <Variable> ' 🔡 ➡️ 🔡
    😀 🍪🔤Wir grüßen den Ehrwürdigen 🔤 ' <Variable> '🍪

    🍮 ' <Variable> ' 🔤🔤

    🔂 i️ ⏩ ➖ 🐔 ' <Variable> ' ' <Number> ' ' <Number> ' 🍇
      🍮 ' <Variable> ' 📝 ' <Variable> ' 🍺🐽 ' <Variable> ' ' <Variable> '
    🍉
    🍎 ' <Variable> '
  🍉

  😀 🍭 ' <Variable> ' 🔤Hans🔤

  🍦 ' <Variable> ' 🔷🕵🐑 🔤Karate Kid🔤

  🍦 ' <Variable> ' 💳 ' <Variable> '
  🏷 ' <Variable> ' 🔤Kung Fu Panda🔤

  😀 🍭 ' <Variable> '

  🍦 walfriedGrüßer 🍩🙋🍤 🔤Walfried🔤
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
    🍎 🔤You should see this!🔤
  🍉
🍉

🐇 🍤 🍇
  🐇🐖 🙋 ' <Variable> ' 🔡 ➡️ 🍇🚂➡️🔡🍉 🍇
    🍎 🍇 ' <Variable> ' 🚂 ➡️ 🔡
      🍊 😛 ' <Variable> ' ' <Number> ' 🍇
        🍎 🍪 🔤Have a good lunch, 🔤 ' <Variable> '🍪
      🍉
      🍎 🍪 🔤Hello, 🔤 ' <Variable> '🍪
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
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤not error🔤
  🍉
  🍊 🚥 ' <Variable> ' 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤not error🔤
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
  🍦 ' <Variable> ' 🔷 🌟🐚🔡 ✂️ 🔤Hallo🔤

  😀 🎉 ' <Variable> '
  😀 🎉 🐌 ' <Variable> '

  🍦 ' <Variable> '  🔷☑️ ✂️ 🔤Guten abend🔤
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
  🍦 ' <Variable> ' 🔷🐻🆕 🔤Hans🔤
  🍦 ' <Variable> ' 🔷🐻🆕 🔤Hans🔤

  🍊 😛 ' <Variable> ' ' <Variable> ' 🍇
    😀 🔤Gleich🔤
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
      😀 🍪 🔤Burger name: 🔤 ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
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
      😀 🍪 🔤Pizza  name: 🔤 ' <Variable> ' 🍪
    🍉
    🍊 ' <Variable> ' 🍇
      😀 🔤is extra large🔤
    🍉
    🍊 ' <Variable> ' 🍇
      😀 🔤is extra hot🔤
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
  🍉

  🐖 💷 ➡️ 💷 🍇
    🍎 🐕
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍔🆕 🔤Barbecue burger🔤 🍨 🔤onions🔤 🔤bbq sauce🔤 🍆
  🍦 ' <Variable> ' 💷 ' <Variable> '
  😀 notes

  🍦 ' <Variable> ' 🔷🍕🆕 🔤Romana🔤 🍨 🔤tomato🔤 🔤mozzarella🔤 🔤anchovies🔤 🍆 👍 👍
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
      🍎 🔤Croissant🔤
    🍉
    🍊 😛 🐕 🔷⏰🥞 🍇
      🍎 🔤Pancakes🔤
    🍉
    🍊 😛 🐕 🔷⏰🥓 🍇
      🍎 🔤Bacon🔤
    🍉
    🍎 🔤🔤
  🍉
🍉

🏁 🍇
	🍦 ' <Variable> ' 🔷⏰🥞
  😀 🍪 🔤Your choice of breakfast is 🔤 🔡' <Variable> ' 🍪

  🍦 ' <Variable> ' 🔷⏰🥐
  😀 🍪 🔤Jack’s choice of breakfast is 🔤 🔡' <Variable> ' 🍪
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
    😀 🔤If everybody had an ocean🔤
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
      😀 🍪 🔤Burger name: 🔤 ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
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
  🍦 ' <Variable> ' 🔷🍔🆕 🔤Barbecue burger🔤 🍨 🔤onions🔤 🔤bbq sauce🔤 🍆
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
    🍎 🔤I see you coming and I don\'t wanna know your name🔤
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
  🙋 🔷🐟🆕 🔤Jean🔤
  🙋 🔷🐟🆕 🔤Hercule🔤
  🙋 🔷🦆🆕 🔤Paul🔤
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
    🐐 🆕 🔤Christopher🔤
  🍉

  ✒️ 🐖 🙋 🍇
    🐿 🙋
    😀 🔤I’m a blowfish🔤
  🍉

  ✒️ 🐖 🥛 ' <Variable> ' 🚀 ➡️ 🚀 🍇
    🍎 ➕🐿🥛 ' <Variable> ' ' <Number> '
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕 🔤Shawn🔤
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
    😀 🍪 🔤You ordered a 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤kg croissant filled with 🔤 ' <Variable> ' 🍪
    🍊 ' <Variable> ' 🍇
      😀 🔤The croissant is vegan!🔤
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🥐🆕 👍 🔤Nutella🔤 ' <Number> '
  🍦 ' <Variable> ' 🔷🥐🆕 👍 🔤peanut butter🔤 ' <Number> '
  🍭 🍇
    😀 ' <Variable> '
    😀 ' <Variable> '
    🍦 ' <Variable> ' 🔷🥐🆕 👎 🔤jam🔤 ' <Number> '
    😀 ' <Variable> '
  🍉
🍉
'
|
# tests/compilation/extension.emojic
#
'🏁 🍇
  😀 😈 🔤James Tiberius Kirk🔤
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
      😀 🍪 🔤Burger name: 🔤 ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
  🍉
🍉

🐇 🍾 🍇
  🍰 ' <Variable> ' 🚀
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚀 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇
  🍉

  🐖 😀 🍇
    😀 🍪 🔤Sauce 🔤 ' <Variable> ' 🔤 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤ml Hot: 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
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
      😀 🍪 🔤Drink: 🔤 ' <Variable> ' 🍪
    🍉
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <Variable> '
    🍉
  🍉

  🐇🐖 🤒 ' <Variable> ' 🍨🐚📃 🍇
    🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Double Bacon🔤 🔡 ' <Variable> ' ' <Number> '🍪 🍨 🔤Bacon🔤 🔤Tomato🔤 🍆 ⚡️  🔷🍾🆕 ' <Number> ' 🍪🔤barbecue🔤 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Triple Burger🔤 🔡 ' <Variable> ' ' <Number> '🍪  🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆 🔤Coke🔤 🔷🍾🆕 ' <Number> ' 🍪🔤chilli🔤 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Cheeseburger🔤 🔡 ' <Variable> ' ' <Number> '🍪  🍨 🔤Cheese🔤 🍆 🔤Lemonade🔤 ⚡️
      🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Standard Burger🔤 🔡 ' <Variable> ' ' <Number> '🍪  🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆 🔤Coke🔤 ⚡️
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
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 ' <Variable> ' 🍪
  🍉
🍉

🕊 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on spot light at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤Using radio network to call 🔤 ' <Variable> ' 🍪
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 ' <Variable> ' 🍪
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🍨 🔤23456🔤 🔤12345643🔤 🍆
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

  😀 🔤everything seems fine🔤
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
    🍮 ' <Variable> ' 🔤1234🔤
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
    😀 🔤This method is never called🔤
  🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤2493928289293🔤
  🍉
🍉

🕊 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 ' <Variable> ' 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 ' <Variable> ' 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤5969202056🔤
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 ' <Variable> ' 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 ' <Variable> ' 💡 🍇
    🔦 ' <Variable> ' ' <Number> '
  🍉

  🐇🐖 📞 ' <Variable> ' 📞 🍇
    📞 ' <Variable> ' 🔤2929294757🔤
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

  🍮 ' <Variable> ' 🔤test🔤

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
    🍊 😛 ' <Variable> ' 🔤croissant🔤 🍇
      🍎 🔷⏰🥐
    🍉
    🍊 😛 ' <Variable> ' 🔤pancakes🔤 🍇
      🍎 🔷⏰🥞
    🍉
    🍊 😛 ' <Variable> ' 🔤bacon🔤 🍇
      🍎 🔷⏰🥓
    🍉
    🍎 🔷⏰🥓 👴 Default to bacon
  🍉

  🐖 🔡 ➡️ 🔡 🍇
    🍊 😛 🐕 🔷⏰🥐 🍇
      🍎 🔤Croissant🔤
    🍉
    🍊 😛 🐕 🔷⏰🥞 🍇
      🍎 🔤Pancakes🔤
    🍉
    🍊 😛 🐕 🔷⏰🥓 🍇
      🍎 🔤Bacon🔤
    🍉
    🍎 🔤🔤
  🍉
🍉

🏁 🍇
	🍦 ' <Variable> ' 🍩🔡⏰ 🔤pancakes🔤
  😀 🍪 🔤Your choice of breakfast is 🔤 🔡' <Variable> ' 🍪
🍉
'
|
# tests/compilation/variableInitAndScoping.emojic
#
'🏁 🍇
  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    😀 🍪🔤i=🔤 🔡' <Variable> ' ' <Number> '🍪
    🍰 ' <Variable> ' 🍬🔡
    🔂 ' <Variable> ' 🍨 🔤0🔤 🔤1🔤 🔤2🔤 🍆 🍇
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
  😀 🍪🔤Hello🥐 🔤 🔤你好，世界！🔤  🔤🥝 wo🔤 🔤rld!🔤🍪
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
      😀 🍪 🔤Burger name: 🔤 ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
  🍉
🍉

🕊 🍾 🍇
  🍰 ' <Variable> ' 🚀
  🍰 ' <Variable> ' 🔡
  🍰 ' <Variable> ' 🚂

  🐈 🆕 🍼 ' <Variable> ' 🚀 🍼 ' <Variable> ' 🔡 🍼 ' <Variable> ' 🚂 🍇
  🍉

  🐖 😀 🍇
    😀 🍪 🔤Sauce 🔤 ' <Variable> ' 🔤 🔤 🔡 ' <Variable> ' ' <Number> ' 🔤ml Hot: 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
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
      😀 🍪 🔤Drink: 🔤 ' <Variable> ' 🍪
    🍉
    🍊🍦 ' <Variable> ' ' <Variable> ' 🍇
      😀 ' <Variable> '
    🍉
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🍨🐚📃🐸

  🔂 ' <Variable> ' ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Double Bacon🔤 🔡 ' <Variable> ' ' <Number> '🍪 🍨 🔤Bacon🔤 🔤Tomato🔤 🍆 ⚡️  🔷🍾🆕 ' <Number> ' 🍪🔤barbecue🔤 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Triple Burger🔤 🔡 ' <Variable> ' ' <Number> '🍪  🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆 🔤Coke🔤 🔷🍾🆕 ' <Number> ' 🍪🔤chilli🔤 🔡 ' <Variable> ' ' <Number> '🍪 ' <Number> '
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Cheeseburger🔤 🔡 ' <Variable> ' ' <Number> '🍪  🍨 🔤Cheese🔤 🍆 🔤Lemonade🔤 ⚡️
    🍦 ' <Variable> ' 🔷📃🆕 🔷🍔🆕 🍪🔤Standard Burger🔤 🔡 ' <Variable> ' ' <Number> '🍪  🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆 🔤Coke🔤 ⚡️
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
    🐐 🆕 🔤Christopher🔤
  🍉

  🐖 🥛 🍇
    😀 🔤I like milk🔤
  🍉
🍉

🐇 🌕 🐡 🍇
  🐖 💎 🍇
    😀 🔤Gem’s are very valuable🔤
  🍉

  🐖 🥞 🍇
    😀 🔤Pancakes are tasty🔤
  🍉
🍉

🏁 🍇
  🍦 ' <Variable> ' 🔷🐟🆕 🔤Shawn🔤
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
      😀 🍪 🔤Burger name: 🔤 ' <Variable> ' 🍪
    🍉
    😀 🔷🔡🍨 ' <Variable> ' 🔤, 🔤
  🍉
🍉

🐇 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🚂 🍇
    😀 🍪 🔤Requested 🔤 🔡 ' <Variable> ' ' <Number> ' 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🐇 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ ' <Variable> ' 🍔 🍇
    😀 🍪 🔤Requested 🔤 🍪
    😀 ' <Variable> '
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 🔤Triple Burger🔤 🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆
  🍉
🍉

🏁 🍇
  🍰 ' <Variable> ' 📠🐚🚂
  🍮 ' <Variable> ' 🔷🏨🆕

  ⏱ ' <Variable> ' ' <Number> '
  😀🔡 🚚 ' <Variable> ' ' <Number> '

  🍰 ' <Variable> ' 📠🐚🍔
  🍮 ' <Variable> ' 🔷🏣🆕

  ⏱ ' <Variable> ' 🔷🍔🆕 🔤Standard Burger🔤 🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆
  😀 🚚 ' <Variable> '
🍉
'
		}
	}
