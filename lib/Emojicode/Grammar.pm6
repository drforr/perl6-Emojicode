grammar Emojicode::Grammar
	{
		token Number
			{
			| '-'? <[ 1 .. 9 ]> <[ 0 .. 9 _ ]>* '.'  <[ 0 .. 9 ]>+
			| '-'? '0' '.' <[ 0 .. 9 ]> <[ 0 .. 9 _ ]>*
			| '-'? <[ 1 .. 9 ]> <[ 0 .. 9 _ ]>*
			| '-'? '0'
			}

		token TOP
			{
# tests/compilation/protocolSubclass.emojic
#
'🐊 💡 🍇
  🐖 🔦 degree 🚀
🍉

🐊 📞 🍇
  🐖 📞 number 🔡
  🐖 🔙 ➡️ 🔡
🍉

🐇 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 😷 🍇
    😀 🔤This method is never called🔤
  🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree ' <Number> ' 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 number 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤2493928289293🔤
  🍉
🍉

🐇 ⌚️  📱 🍇
  ✒️ 🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on display at 🔤 🔡 degree ' <Number> ' 🍪
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 number 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤5969202056🔤
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree ' <Number> ' 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 lightEmitting 💡 🍇
    🔦 lightEmitting ' <Number> '
  🍉

  🐇🐖 📞 phoneCapabilities 📞 🍇
    📞 phoneCapabilities 🔤2929294757🔤
    😀 🔙phoneCapabilities
  🍉
🍉

🏁 🍇
  🍦 iphone 🔷📱🆕

  🍩💡🥊 iphone
  🍩📞🥊 iphone
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

  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡
  🍰 extraLarge 👌
  🍰 extraHot 👌

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍼 extraHot 👌 🍼 extraLarge 👌 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Pizza name: 🔤 name 🍪
    🍉
    🍊 extraLarge 🍇
      😀 🔤is extra large🔤
    🍉
    🍊 extraHot 🍇
      😀 🔤is extra hot🔤
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉
🍉

🏁 🍇
  🍦 pizza 🔷🍕🆕 🔤Romana🔤 🍨 🔤tomato🔤 🔤mozzarella🔤 🔤anchovies🔤 🍆 👍 👍
  🍰 notes 💷
  🍮 notes pizza
  😀 notes
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
'🐊 📠🐚A⚪️ 🍇
  🐖 ⏱ a A
  🐖 🚚 ➡️ A
🍉

🕊 🍔 🍇
  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Burger name: 🔤 name 🍪
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉
🍉

🕊 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ roomNumber 🚂 🍇
    😀 🍪 🔤Requested 🔤 🔡 roomNumber ' <Number> ' 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🕊 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ burgerType 🍔 🍇
    😀 🍪 🔤Requested 🔤 🍪
    😀 burgerType
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 🔤Triple Burger🔤 🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆
  🍉
🍉

🏁 🍇
  🍰 a 📠🐚🚂
  🍮 a 🔷🏨🆕

  ⏱ a ' <Number> '
  😀🔡 🚚 a ' <Number> '

  🍰 b 📠🐚🍔
  🍮 b 🔷🏣🆕

  ⏱ b 🔷🍔🆕 🔤Standard Burger🔤 🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆
  😀 🚚 b
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
  🐇🐖 🙋 name 🔡 ➡️ 🍇🚂➡️🔡🍉 🍇
    🍎 🍇 hour 🚂 ➡️ 🔡
      🍊 😛 hour ' <Number> ' 🍇
        🍎 🍪 🔤Have a good lunch, 🔤 name🍪
      🍉
      🍎 🍪 🔤Hello, 🔤 name🍪
    🍉
  🍉

  👴 Returns a functional ID card
  🐇🐖 👌🏾 name 🔡 age 🚂 birthplace 🔡 height 🚀 ➡️ 🍇➡️🔡🍉 🍇
    🍊 ⬅️ age ' <Number> ' 🍇
      🍎 🍇 ➡️🔡 🍎 🍪 🔤It’s a kid born in 🔤 birthplace 🔤 named 🔤 name 🍪 🍉
    🍉
		🍎 🍇 ➡️🔡 🍎 🍪 name 🔤: Born in 🔤 birthplace  🔤 and 🔤 🔡 height ' <Number> ' 🔤 meters tall.🔤 🍪 🍉
  🍉
🍉

🏁 🍇
  🍦 florenceGreeter 🍩🙋🍤 🔤Florence🔤
  😀 🍭 florenceGreeter ' <Number> '
  😀 🍭 florenceGreeter ' <Number> '
  😀 🍭 florenceGreeter ' <Number> '

  🍦 violetGreeter 🍩🙋🍤 🔤Violet🔤
  😀 🍭 violetGreeter ' <Number> '
  😀 🍭 violetGreeter ' <Number> '
  😀 🍭 violetGreeter ' <Number> '

	🍦 alistairID 🍩👌🏾🍤 🔤Alistair🔤 ' <Number> '	🔤Cambridge🔤 ' <Number> '
	😀 🍭 alistairID

	🍦 zachID 🍩👌🏾🍤 🔤Zach🔤 ' <Number> ' 🔤Derry🔤 ' <Number> '
	😀 🍭 zachID
🍉
'
|
# tests/compilation/valueType.emojic
#
'🕊 🌼 🍇
  🍰 abc 🔡
  🍰 zahl 🚂

  🐈 🆕 🍼 abc 🔡 zahlIn 🚂 🍇
    🍮 zahl ➕ zahlIn ' <Number> '
  🍉

  🐖 😀 🍇
    😀 abc
    😀 🔡 zahl ' <Number> '
  🍉
🍉

🕊 🌸 🍇
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇

  🍉

  🐖 🤣 ➡️ 🔡 🍇
    🍎 name
  🍉
🍉

🕊 💐 🍇
  🍰 blume2 🌼
  🍰 blume1 🌸

  🐈 🆕 name 🔡  🍇
    🍮 blume1 🔷🌸🆕 name
    🍮 blume2 🔷🌼🆕 🍪 name 🔤_2🔤 🍪 ' <Number> '
  🍉

  🐖 🍐 ➡️ 🔡 🍇
    🍎 🤣 blume1
  🍉

  🐖 🌼 ➡️ 🌼 🍇
    🍎 blume2
  🍉
🍉

🕊 ⚖️ 🍇
  🍰 a 🌼
  🍰 b 🌼

  🐈 🆕 🍼 a 🌼 🍼 b 🌼 🍇🍉

  🐖 🌗 ➡️ 🌼 🍇
    🍎 a
  🍉

  🐖 🌓 ➡️ 🌼 🍇
    🍎 b
  🍉
🍉

🕊 🌷 🍇
  🍰 blume1 💐
  🍰 blume2 🌼

  🐈 🆕 name 🔡 🍇
    🍮 blume1 🔷⚫️🆕 name
    🍮 blume2 🔷⚫️🆕 🔤sport🔤 ' <Number> '
  🍉

  🐖 🥐 ➡️ 🔡 🍇
    🍎 🍐 blume1
  🍉

  🐖 🌼 ➡️ ⚖️ 🍇
    🍎 🔷⚫️🆕 blume2 🌼 blume1
  🍉
🍉

🏁 🍇
  🍦 ph 🔷🌼🆕 🔤Philadelphia🔤 ' <Number> '
  🍦 mi 🔷🌸🆕 🔤Miami🔤
  😀 ph
  😀 🤣 mi

  😀 🍐 🔷💐🆕 🔤NY🔤
  🍦 la 🔷💐🆕 🔤LA🔤
  😀 🍐 la
  😀 🌼 la

  🍦 fl 🔷🌷🆕 🔤FL🔤
  😀 🥐 fl
  🍦 bothFlowers 🌼 fl
  😀 🌗 bothFlowers
  😀 🌓 bothFlowers
🍉
'
|
# tests/compilation/genericsValueType.emojic
#
'🕊 🎁 🐚 T 🔵 🍇

  🍰 etwas T

  🐈 ✂️ =etwas T 🍇
    🍮 etwas =etwas
  🍉

  🐖 🎉 ➡️  T 🍇
    🍎 etwas
  🍉
🍉

🏁 🍇
  🍦 kiste 🔷 🎁🐚🔡 ✂️ 🔤week🔤

  😀 🎉 kiste
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
  🥑 a 🍩🙋🐟 🍇
    😀 a
  🍉
  🍓 error 🍇
    😀 🍪🔤An error occured: 🔤 🔡 error 🍪
  🍉

  🥑 a 🍩🙅🐟 🍇
    😀 a
  🍉
  🍓 error 🍇
    😀 🍪🔤An error occured: 🔤 🔡 error 🍪
  🍉

  🥑 a 🍩🙅‍♂️🐟 🍇
    😀 🍺🔲 a 🔡
  🍉
  🍓 error 🍇
    😀 🍪🔤An error occured: 🔤 🔡 error 🍪
  🍉

  🥑 a 🍩🙋‍♂️ 🐟 🍇
    😀 🍺🔲 a 🔡
  🍉
  🍓 error 🍇
    😀 🍪🔤An error occured: 🔤 🔡 error 🍪
  🍉
🍉
'
|
# tests/compilation/gcStressTest1.emojic
#
'🐇 😇 🍇
  🍰 string 🔡

  🐈 🆕 int 🚂 🍇
    🍮 string 🍪🔤Music is a world within itself 🔤 🔡 int ' <Number> ' 🍪
  🍉

  🐖 🦆 🍇
    😀 string
  🍉
🍉

🐇 🤣 🍇
	🍰 container 😇

  🐈 🆕 int 🚂 🍇
    🍮 container 🔷😇🆕 int
  🍉

  🐖 🦆 🍇
    🦆 container
  🍉
🍉

🐇 🍗 🍇
  🍰 ab 🍬🔡
  🍰 ac 🍬🔡
  🍰 a2 🍬🔡
  🍰 a1 🍬🔡
  🍰 a3 🍬🔡
  🍰 a5 🍬🔡
  🍰 a7 🍬🔡
  🍰 a8 🍬🔡
  🍰 a0 🍬🔡
  🍰 as 🍬🔡
  🍰 dab 🍬🔡
  🍰 dac 🍬🔡
  🍰 da2 🍬🔡
  🍰 da1 🍬🔡
  🍰 da3 🍬🔡
  🍰 da5 🍬🔡
  🍰 da7 🍬🔡
  🍰 da8 🍬🔡
  🍰 da0 🍬🔡
  🍰 das 🍬🔡

  🐈 🆕 🍇
  🍉
🍉

🏁 🍇
  🍦 list 🍨🔷🤣🆕 ' <Number> '🍆
  🔂 i ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 _ 🔷🍗🆕
    🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
      🐻 list 🔷🤣🆕 i
    🍉
  🍉
  🔂 o list 🍇
    🦆 o
  🍉
🍉
'
|
# tests/compilation/gcStressTest4.emojic
#
'🕊 😇 🍇
  🍰 string 🔡

  🐈 🆕 int 🚂 🍇
    🍮 string 🍪🔤Music is a world within itself 🔤 🔡 int ' <Number> ' 🍪
  🍉

  🐖 🦆 🍇
    😀 string
  🍉
🍉

🕊 🤣 🍇
	🍰 container 😇

  🐈 🆕 int 🚂 🍇
    🍮 container 🔷😇🆕 int
  🍉

  🐖 🦆 🍇
    🦆 container
  🍉
🍉

🐇 🍗 🍇
  🍰 ab 🍬🔡
  🍰 ac 🍬🔡
  🍰 a2 🍬🔡
  🍰 a1 🍬🔡
  🍰 a3 🍬🔡
  🍰 a5 🍬🔡
  🍰 a7 🍬🔡
  🍰 a8 🍬🔡
  🍰 a0 🍬🔡
  🍰 as 🍬🔡
  🍰 dab 🍬🔡
  🍰 dac 🍬🔡
  🍰 da2 🍬🔡
  🍰 da1 🍬🔡
  🍰 da3 🍬🔡
  🍰 da5 🍬🔡
  🍰 da7 🍬🔡
  🍰 da8 🍬🔡
  🍰 da0 🍬🔡
  🍰 das 🍬🔡

  🐈 🆕 🍇
  🍉
🍉

🏁 🍇
  🍦 list 🍨🔷🤣🆕 ' <Number> '🍆
  🔂 i ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 _ 🔷🍗🆕
    🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
      🐻 list 🔷🤣🆕 i
    🍉
  🍉
  🔂 o list 🍇
    🦆 o
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
    🍦 firstLetter 🔪 🐕 ' <Number> ' ' <Number> '
    🍦 rest 🔪 🐕 ' <Number> ' 🐔 🐕
    🍎 🍪 rest firstLetter 🔤ay🔤 🍪
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
    😀 🇨🇭 swissGermanDescribable
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
	🍦 a 🔷🏷🏁
	🍦 b 🔷🏷🏁
  🍦 c 🔷🏷🚧
  🍦 d 🔷🏷📜
  🍦 e 🔷🏷📜

	🍊 😛 a b 🍇
		😀 🔤hooray🔤
	🍉
  🍊 😛 a c 🍇
    😀 🔤hooray🔤
  🍉
  🍊 😛 a d 🍇
    😀 🔤hooray🔤
  🍉
  🍊 😛 d e 🍇
    😀 🔤hooray🔤
  🍉
🍉
'
|
# tests/compilation/genericProtocol.emojic
#
'🐊 🦀🐚Key⚪️🐚Element⚪️ 🍇
	🐖 🦀 key Key ➡️ Element
🍉

🐇 🐾 🐚Element⚪️ 🍇
	🐊 🦀🐚🔡🐚Element

	🐈 🆕 🍇

	🍉

	🐖 🦀 key 🔡 ➡️ Element 🍇
		🍎 ' <Number> '
	🍉
🍉

🏁 🍇
  🍰 a 🦀🐚🔡🐚🚂
  🍮 a 🔷🐾🐚🚂🆕

  😀 🔡 🦀 a 🔤asdfsadf🔤 ' <Number> '
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
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🙋 🍇
    😀 name
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
  🍰 a 🔵
  🍮 a 🔷🐟🆕 🔤Shawn🔤
  🍰 b 🔵
  🍮 b 🔤Jane🔤
  🍰 c 🐟
  🍮 c 🔷🐡🆕

  🙋 🍺 🔲 a 🐟
  😀 🍺 🔲 b 🔡
  🥛 🍺 🔲 c 🐡

  🍊🍦 as 🔲 a 🔡  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 b 🐟  🍇
    😀 🔤Oops🔤
  🍉
🍉
'
|
# tests/compilation/repeatWhile.emojic
#
'🏁 🍇
  🍮 a ' <Number> '

  🔁 ◀️ a ' <Number> ' 🍇
    😀 🔡 a ' <Number> '
    🍮➕ a ' <Number> '
  🍉
🍉
'
|
# tests/compilation/class.emojic
#
'🐇 😮 🍇
	🐇🐖 🐸 a 🔡 ➡️ 😮 🍇
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
  🍦 classes 🍨🔳🐟 🔳🐡 🔳🐋 🔳🐠  🍆
  🔂 class classes 🍇
    🍦 fish 🔷⬛️ class 🆕
    🙋 fish
  🍉
🍉
'
|
# tests/compilation/threads.emojic
#
'🐇 🏦 🍇
  🍰 account 🚂

  🐈 🆕 🍇
    🍮 account ' <Number> '
  🍉

  🐖 💸 sum 🚂 🍇
    🍮 account ➖ account sum
  🍉

  🐖 💶 ➡️ 🚂 🍇
    🍎 account
  🍉
🍉

🏁 🍇
  🍦 threads 🔷🍨🐚💈🐸

  🍦 account 🔷🏦🆕

  🍦 mutex 🔷🔐🆕

  🔂 i ⏩ ' <Number> ' ' <Number> ' 🍇
    🐻 threads 🔷💈🆕 🍇
      🔂 j ⏩ ' <Number> ' ' <Number> ' 🍇
        🔒 mutex
        🍊 ➡️ 💶 account ' <Number> ' 🍇
          😀 🔤Money, money, money – Must be funny🔤
          💸 account ' <Number> '
        🍉
        🔓 mutex
      🍉
    🍉
  🍉

  🔂 thread threads 🍇
    🛂 thread
  🍉

  😀 🔡 💶 account ' <Number> ' 👴 Print the balance
🍉
'
|
# tests/compilation/closureCaptureThis.emojic
#
'🐇 🕵 🍇
  🍰 name 🔡

  🐈 🐑 @name 🔡 🍇
    🍮 name @name
  🍉

  🐖 🏷 neuerName 🔡 🍇
    🍮 name neuerName
  🍉

  🐖 💳 ➡️ 🍇➡️🔡🍉 🍇
    🍎 🍇 ➡️ 🔡
      🍎 name
    🍉
  🍉
🍉

🏁 🍇
  🍦 pi 🔷🕵🐑 🔤Arthur Lemming🔤
  🍦 nameGetter 💳 pi

  😀 🍭 nameGetter

  🏷 pi 🔤Sherlock Holmes🔤

  😀 🍭 nameGetter

  🏷 pi 🔤Thomas Magnum🔤

  😀 🍭 nameGetter
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
  🍰 list 🍨🐚🔡
  🍮 list 🔷🔶💊🍨🐚🔡🐸
  😀 🔡 🐔 list ' <Number> '
🍉
'
|
# tests/compilation/protocolClass.emojic
#
'🐊 💡 🍇
  🐖 🔦 degree 🚀
🍉

🐊 📞 🍇
  🐖 📞 number 🔡
  🐖 🔙 ➡️ 🔡
🍉

🐇 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 😷 🍇
    😀 🔤This method is never called🔤
  🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree ' <Number> ' 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 number 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤2493928289293🔤
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 number 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤5969202056🔤
  🍉
🍉

🐇 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree ' <Number> ' 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 lightEmitting 💡 🍇
    🔦 lightEmitting ' <Number> '
  🍉

  🐇🐖 📞 phoneCapabilities 📞 🍇
    📞 phoneCapabilities 🔤2929294757🔤
    😀 🔙phoneCapabilities
  🍉
🍉

🏁 🍇
  🍦 iphone 🔷📱🆕

  🍩💡🥊 iphone
  🍩📞🥊 iphone
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
'🕊 🥛🐚 T ⚪️ 🍇
  🍰 paywall 👌
  🍰 value T

  🐈 🆕 🍼 value T 🍇
    🍮paywall 👎
  🍉

  🐖 🥔 ➡️ T 🍇
    🍎 value
  🍉
🍉

🕊 🦑🐚 T ⚪️ 🍇
  🍰 a T
  🍰 b T

  🐈 🆕 🍼 a T 🍼 b T 🍇🍉

  🐖 👈 ➡️ T 🍇
    🍎 a
  🍉

  🐖 👉 ➡️ T 🍇
    🍎 b
  🍉
🍉

🏁 🍇
  🍰 a ⚪️
  🍮 a 🔷🥛🐚🚂🆕 ' <Number> '
  🍰 b ⚪️
  🍮 b 🔷🥛🐚🔡🆕 🔤moment🔤

  😀 🔡 🥔 🍺 🔲 a 🥛🐚🚂 ' <Number> '
  😀 🥔 🍺 🔲 b 🥛🐚🔡

  🍰 c ⚪️
  🍮 c 🔷🦑🐚🔡🆕 🔤rest🔤 🔤assured🔤

  😀 👈 🍺 🔲 c 🦑🐚🔡
  😀 👉 🍺 🔲 c 🦑🐚🔡

  🍊🍦 as 🔲 a 🥛🐚🔡 🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 b 🥛🐚🚂 🍇
    😀 🔤Oops🔤
  🍉
🍉
'
|
# tests/compilation/valueTypeRemoteAdditional.emojic
#
'🕊 🏠 🍇
  🍰 street 🔡
  🍰 houseNumber 🔡
  🍰 city 🔡
  🍰 zipCode 🔡
  🍰 state 🔡
  🍰 country 🔡

  🐈 🆕 🍼 street 🔡 🍼 houseNumber 🔡 🍼 city 🔡 🍼 zipCode 🔡 🍼 state 🔡 🍼 country 🔡 🍇🍉

  🐖 😀 🍇
    😀 street
    😀 houseNumber
    😀 city
    😀 zipCode
    😀 state
    😀 country
  🍉
🍉

🏁 🍇
  🍦 apple 🔷🏠🆕 🔤Infinite Loop🔤 🔤1🔤 🔤Cupertino🔤 🔤95014🔤 🔤California🔤 🔤USA🔤
  😀 apple

  🍰 something ⚪️
  🍮 something 🔷🏠🆕 🔤Dr. Karl Renner-Ring🔤 🔤3🔤 🔤Wien🔤 🔤1017🔤 🔤Wien🔤 🔤Österreich🔤

  🍰 building 🍬🏠
  🍮 building 🔲 something 🏠
  😀🍺building

  🍮 building 🔷🏠🆕 🔤Boulevard du Parc🔤 🔤1🔤 🔤Serris/Coupvray🔤 🔤77700🔤 🔤Thorigny-sur-Marne🔤 🔤France🔤
  🍮 something building
  😀🍺🔲 something 🏠
🍉
'
|
# tests/compilation/valueTypeMutate.emojic
#
'🕊 🌼 🍇
  🍰 text 🔡

  🐈 🆕 🍼 text 🔡 🍇🍉

  🐖 🌵 🍇
    😀 text
  🍉

  🖍 🐖 😣 🍇
    🍮 text 🔤Voyager🔤
  🍉

  🖍 🐖 😋 string 🔡 🍇
    🍮 text string
  🍉
🍉

🏁 🍇
  🍦 discovery 🔷🌼🆕 🔤Discovery🔤
  🍮 discoveryCopy discovery
  🌵 discoveryCopy
  😣 discoveryCopy
  🌵 discoveryCopy
  🌵 discovery
  🍮 discoveryCopyCopy discoveryCopy
  🌵 discoveryCopyCopy
  😋 discoveryCopyCopy 🔤Enterprise🔤
  🌵 discoveryCopyCopy
  🌵 discoveryCopy
  🌵 discovery
🍉
'
|
# tests/compilation/conditionalProduce.emojic
#
'🕊 🥙 🍇
  🍰 tomatoes 🚂
  🍰 salad 👌
  🍰 chicken 🚂
  🍰 weight 🚂

  🐈 🆕 🍼 tomatoes 🚂 🍼 salad 👌 🍼 chicken 🚂 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight ' <Number> ' 🔤kg pita filled with 🔤 🔡 tomatoes ' <Number> ' 🔤 tomatoes and 🔤 🔡 chicken ' <Number> ' 🔤g of chicken.🔤 🍪
    🍊 salad 🍇
      😀 🔤There’s also salad in your pita!🔤
    🍉
  🍉
🍉

🏁 🍇
  🍰 a 🍬🔡
  🍰 b 🍬🔡
  🍰 c 🍬🔡
  🍰 d 🍬🥙
  🍰 e 🍬🥙

  🍮 a 🔤Did🔤
  🍮 b ⚡️
  🍮 c 🔤hear🔤
  🍮 d 🔷🥙🆕 ' <Number> ' 👎 ' <Number> ' ' <Number> '
  🍮 e ⚡️

  🍊🍦 string a 🍇
    😀 string
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 string b 🍇
    😀 string
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 string c 🍇
    😀 string
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 pita d 🍇
    😀 pita
  🍉
  🍓 🍇
    😀 🔤no🔤
  🍉
  🍊🍦 pita e 🍇
    😀 pita
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
	🍰 weight 🚂

	🐈 🆕 🍼 weight 🚂 🍇🍉

  🐖 🏋️ 🍇
    😀🔡 weight ' <Number> '
  🍉
🍉

🐇 🐰 🙈 🍇
  🍰 earLength 🚂

  🐈 🆕 🍼 earLength 🚂 weight 🚂 🍇
    🐐🆕 weight
  🍉

  🐖 📏 🍇
    😀🔡 earLength ' <Number> '
  🍉
🍉


🏁 🍇
	🍦 rabbit 🔷🐰🆕 ' <Number> ' ' <Number> '
  🍦 animal 🔷🙈🆕 ' <Number> '
  🏋️ rabbit
  📏 rabbit
  🏋️ animal
🍉
'
|
# tests/compilation/chaining.emojic
#
'🏁 🍇
  🍰 word 🍬🔡
  🍮 word 🔤I said a hip hop🔤

  🍻 😀 word
  🍻 😀 🍻 📝 word 🔟,

  🍰 nothingness 🍬🔡
  🍮 nothingness ⚡️

  🍻 😀 nothingness
  🍻 😀 🍻 📝 nothingness 🔟,

  😀 🔤Thanks for your attention.🔤
🍉
'
|
# tests/compilation/protocolSelfGeneric.emojic
#
'🐊 💿 🍇
  🐖 🎶 dd 🐕
🍉

🐇 🌗 🍇
  🐊 💿

  🍰 secret 🚂

  🐈 🆕 @secret 🚂 🍇
    🍮 secret @secret
  🍉

  🐖 💱 ➡️ 🚂 🍇
    🍎 secret
  🍉

  🐖 🎶 dd 🌗 🍇
    🍊 😛 💱 🐕 💱 dd 🍇
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

  🐖 🎶 dd 🌵 🍇🍉
🍉

🐇 📻 🍇
  🐇🐖 🏀 🐚A💿 a1 A a2 A 🍇
    🎶 a1 a2
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
'🐊 🦀🐚Key⚪️🐚Element⚪️ 🍇
	🐖 🦀 key Key ➡️ Element
🍉

🕊 🐾 🐚Element⚪️ 🍇
	🐊 🦀🐚🔡🐚Element

	🐈 🆕 🍇

	🍉

	🐖 🦀 key 🔡 ➡️ Element 🍇
		🍎 ' <Number> '
	🍉
🍉

🏁 🍇
  🍰 a 🦀🐚🔡🐚🚂
  🍮 a 🔷🐾🐚🚂🆕

  😀 🔡 🦀 a 🔤asdfsadf🔤 ' <Number> '
🍉
'
|
# tests/compilation/captureTypeMethod.emojic
#
'🐇 🕵 🍇
  🍰 name 🔡

  🔑🐈 🆕 🍼 name 🔡 🍇🍉

  🐇🐖 🥚 ➡️  🕵 🍇
    🍎 🔷🐕🆕 🔤George🔤
  🍉

  🐖 😀 🍇
    😀 name
  🍉
🍉

🕊 📅 🍇
  🐇🐖 🎆 🍇
    😀 🔤Happy New Year!🔤
  🍉
🍉

🏁 🍇
  🍦 hatchOut 🌶🍩🥚🕵
  😀 🍭 hatchOut
  🍦 happyNewYear 🌶🍩🎆📅
  🍭 happyNewYear
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

  🍰 list 🔶🍣🍐🐚🔡
  🍮 list 🍨 🔤Up🔤 🔤there🔤 🔤in🔤 🔤utopia🔤 🍆
🍉
'
|
# tests/compilation/protocolMulti.emojic
#
'🐊 💡 🍇
  🐖 🔦 degree 🚀
🍉

🐊 📞 🍇
  🐖 📞 number 🔡
🍉

🕊 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree ' <Number> ' 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 number 🍪
  🍉
🍉

🐇 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on spot light at 🔤 🔡 degree ' <Number> ' 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using radio network to call 🔤 number 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 🎇 device 🍱📞💡🍱 🍇
    📞 device 🔤2929294757🔤
    🔦 device ' <Number> '
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
  🍦 a 🍩🙋🐟
  🍦 b 🍩🙅🐟
  🍦 c 🍩🙅‍♂️🐟
  🍦 d 🍩🙋‍♂️🐟

  🍊 🚥 a 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤no error🔤
  🍉

  🍊 🚥 b 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤no error🔤
  🍉

  🍊 🚥 c 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤no error🔤
  🍉

  🍊 🚥 d 🍇
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
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🙋 🍇
    😀 name
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
  🍦 a 🔷🐟🆕 🔤Shawn🔤
  🍦 c 🔷🐡🆕
  🍦 u 🔷🌕🆕

  🙋 a
  🙋 c
  🥛 c
  🙋 u
  🥛 u
  💎 u
  🥞 u
🍉
'
|
# tests/compilation/isNothingness.emojic
#
'🕊 🥐 🍇
  🍰 vegan 👌
  🍰 filling 🔡
  🍰 weight 🚂

  🐈 🆕 🍼 vegan 👌 🍼 filling 🔡 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight ' <Number> ' 🔤kg croissant filled with 🔤 filling 🍪
    🍊 vegan 🍇
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
  🍰 a 🍬🔡
  🍰 b ⚪️
  🍰 c 🍬🥐
  🍰 d 🍬🔵

  🍮 b ⚡️

  🍊 ☁️ a 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ b 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ c 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ d 🍇
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

  🍮 a 🔤test🔤
  🍮 b ' <Number> '
  🍮 c 🔷🥐🆕 👍 🔤vanilla🔤 ' <Number> '
  🍮 d 🔤234🔤

  🍊 ☁️ a 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ b 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ c 🍇
    😀 🔤nothingness🔤
  🍉
  🍓 🍇
    😀 🔤not nothingness🔤
  🍉

  🍊 ☁️ d 🍇
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
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🏷 neuerName 🔡 🍇
    🍮 name neuerName
  🍉

  🐖 😀 🍇
    😀 name
  🍉
🍉


🏁 🍇
  🍦 append 🌶📝 🔤Florence🔤
  😀 🍭 append 🔟!
  😀 🍭 append 🔟?

	🍦 d 🔷🕵🆕 🔤Miss Marple🔤
	🍦 changeName 🌶🏷 d
	🍦 printName 🌶😀d
	🍭 printName
	🍭 changeName 🔤Hercule Poirot🔤
	🍭 printName
🍉
'
|
# tests/compilation/castAny.emojic
#
'🐇 🐟 🍇
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🙋 🍇
    😀 name
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
  🍰 vegan 👌
  🍰 filling 🔡
  🍰 weight 🚂

  🐈 🆕 🍼 vegan 👌 🍼 filling 🔡 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight ' <Number> ' 🔤kg croissant filled with 🔤 filling 🍪
    🍊 vegan 🍇
      😀 🔤The croissant is vegan!🔤
    🍉
  🍉
🍉

🕊 🥙 🍇
  🍰 tomatoes 🚂
  🍰 salad 👌
  🍰 chicken 🚂
  🍰 weight 🚂

  🐈 🆕 🍼 tomatoes 🚂 🍼 salad 👌 🍼 chicken 🚂 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight ' <Number> ' 🔤kg pita filled with 🔤 🔡 tomatoes ' <Number> ' 🔤 tomatoes and 🔤 🔡 chicken ' <Number> ' 🔤g of chicken.🔤 🍪
    🍊 salad 🍇
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
  🍰 a ⚪️
  🍮 a 🔷🐟🆕 🔤Shawn🔤
  🍰 b ⚪️
  🍮 b 🔤Jane🔤
  🍰 c ⚪️
  🍮 c 🔷🥐🆕 👎 🔤chocolate🔤 ' <Number> '
  🍰 d ⚪️
  🍮 d ' <Number> '
  🍰 e ⚪️
  🍮 e 🔷🐡🆕
  🍰 f ⚪️
  🍮 f 🔷⏰🥐
  🍰 g ⚪️
  🍮 g 🔷🥙🆕 ' <Number> ' 👎 ' <Number> ' ' <Number> '

  🙋 🍺 🔲 a 🐟
  😀 🍺 🔲 b 🔡
  😀 🍺 🔲 c 🥐
  😀 🔡 🍺 🔲 d 🚂 ' <Number> '
  🙋 🍺 🔲 e 🐟
  🥛 🍺 🔲 e 🐡
  😀 🔡 🍺 🔲 f ⏰
  😀 🍺 🔲 g 🥙

  🍊🍦 as 🔲 a 🔡  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 b 🐟  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 c 🐟  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 a 🐡  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 a 🥐  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 f 🥐  🍇
    😀 🔤Oops🔤
  🍉
  🍊🍦 as 🔲 c ⏰  🍇
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
  🍰 a 🍬🔡
  🍰 b 🍬🔡
  🍰 c 🍬🔡

  🍮 a 🔤Did🔤
  🍮 b ⚡️
  🍮 c 🔤hear🔤

  😀 🍺a
  😀 🍺c
🍉
'
|
# tests/compilation/closureBasic.emojic
#
'🏁 🍇
  🍦 greet 🍇 name 🔡
    😀 🍪🔤It is a plesaure to welcome the honorable 🔤 name🍪
  🍉

  🍭 greet 🔤Hans🔤
  🍭 greet 🔤Gustav🔤
  🍭 greet 🔤Linda🔤

  😀 🔤End of program🔤
🍉
'
|
# tests/compilation/callable.emojic
#
'🏁 🍇
  🍦 string 🔤Krass🔤

  🍦 append 🌶 📝 string

  😀 🍭 append 🔟!
  😀 🍭 append 🔟?

  🍦 greet 🍇 name 🔡 ➡️ 🔡
    😀 🍪🔤Wir grüßen den Ehrwürdigen 🔤 name🍪

    🍮 out 🔤🔤

    🔂 i️ ⏩ ➖ 🐔 name ' <Number> ' ' <Number> ' 🍇
      🍮 out 📝 out 🍺🐽 name i
    🍉
    🍎 out
  🍉

  😀 🍭 greet 🔤Hans🔤

  🍦 detektiv 🔷🕵🐑 🔤Karate Kid🔤

  🍦 derNameFunktion 💳 detektiv
  🏷 detektiv 🔤Kung Fu Panda🔤

  😀 🍭 derNameFunktion

  🍦 walfriedGrüßer 🍩🙋🍤 🔤Walfried🔤
  😀 🍭 walfriedGrüßer ' <Number> '
  😀 🍭 walfriedGrüßer ' <Number> '
  😀 🍭 walfriedGrüßer ' <Number> '

  🍦 captured 🌶🍩🎂⚽️
  😀 🍭 captured

  🍦 capturedITS 🌶🔡' <Number> '
  😀 🍭 capturedITS ' <Number> '
  😀 🍭 capturedITS ' <Number> '

  🍦 capturedPI 🌶🍩⚾️🚀
  😀 🔡 🍭 capturedPI ' <Number> '
🍉

🐇 🕵 🍇
  🍰 name 🔡

  🐈 🐑 @name 🔡 🍇
    🍮 name @name
  🍉

  🐖 🏷 neuerName 🔡 🍇
    🍮 name neuerName
  🍉

  🐖 💳 ➡️ 🍇➡️🔡🍉 🍇
    🍎 🍇 ➡️ 🔡
      🍎 name
    🍉
  🍉

🍉

🐇 ⚽️ 🍇
  🐇🐖 🎂 ➡️ 🔡 🍇
    🍎 🔤You should see this!🔤
  🍉
🍉

🐇 🍤 🍇
  🐇🐖 🙋 name 🔡 ➡️ 🍇🚂➡️🔡🍉 🍇
    🍎 🍇 hour 🚂 ➡️ 🔡
      🍊 😛 hour ' <Number> ' 🍇
        🍎 🍪 🔤Have a good lunch, 🔤 name🍪
      🍉
      🍎 🍪 🔤Hello, 🔤 name🍪
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
  🍦 a 🔷🐟🆕
  🍦 b 🔷🐟🆒

  🍊 🚥 a 🍇
    😀 🔤error🔤
  🍉
  🍓 🍇
    😀 🔤not error🔤
  🍉
  🍊 🚥 b 🍇
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
'🐇 🎁 🐚 T 🔵 🍇

  🍰 etwas T

  🐈 ✂️ =etwas T 🍇
    🍮 etwas =etwas
  🍉

  🐖 🎉 ➡️  T 🍇
    🍎 etwas
  🍉
🍉

🐇 🌟 🐚 A 🔵 🎁 🐚 A 🍇

  ✒️ 🐖 🎉 ➡️ A 🍇
    🍎 🐿 🎉
  🍉

  🐖 🐌 ➡️ 🌟 🐚 A 🍇
    🍎 🐕
  🍉

🍉

🐇 ☑️ 🌟 🐚 🔡 🍇

  ✒️ 🐖 🎉 ➡️ 🔡 🍇
    🍎 🐿 🎉
  🍉

🍉

🏁 🍇
  🍦 kiste 🔷 🌟🐚🔡 ✂️ 🔤Hallo🔤

  😀 🎉 kiste
  😀 🎉 🐌 kiste

  🍦 c  🔷☑️ ✂️ 🔤Guten abend🔤
  😀 🎉 c
  😀 🎉 🐌 c
🍉
'
|
# tests/compilation/selfInDeclaration.emojic
#
'🐊 😛 🍇
	🐖 😛 other 🐕 ➡️ 👌
🍉

🐇 🐾 🍇
	🐊 😛
	🍰 name 🔡

	🐈 🆕 @name 🔡 🍇
		🍮 name @name
	🍉

	🐖 🏷 ➡️ 🔡 🍇
		🍎 name
	🍉

	🐖 😛 other 🐕 ➡️ 👌 🍇
		🍎 😛 name 🏷 other
	🍉
🍉

🐇 🐻 🐾 🍇

🍉

🏁 🍇
  🍦 a 🔷🐻🆕 🔤Hans🔤
  🍦 b 🔷🐻🆕 🔤Hans🔤

  🍊 😛 a b 🍇
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

  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Burger name: 🔤 name 🍪
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉

  🐖 💷 ➡️ 💷 🍇
    🍎 🐕
  🍉
🍉

🕊 🍕 🍇
  🐊 💷

  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡
  🍰 extraLarge 👌
  🍰 extraHot 👌

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍼 extraHot 👌 🍼 extraLarge 👌 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Pizza  name: 🔤 name 🍪
    🍉
    🍊 extraLarge 🍇
      😀 🔤is extra large🔤
    🍉
    🍊 extraHot 🍇
      😀 🔤is extra hot🔤
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉

  🐖 💷 ➡️ 💷 🍇
    🍎 🐕
  🍉
🍉

🏁 🍇
  🍦 burger 🔷🍔🆕 🔤Barbecue burger🔤 🍨 🔤onions🔤 🔤bbq sauce🔤 🍆
  🍦 notes 💷 burger
  😀 notes

  🍦 pizza 🔷🍕🆕 🔤Romana🔤 🍨 🔤tomato🔤 🔤mozzarella🔤 🔤anchovies🔤 🍆 👍 👍
  🍦 notes2 💷 pizza
  😀 notes2
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
	🍦 you 🔷⏰🥞
  😀 🍪 🔤Your choice of breakfast is 🔤 🔡you 🍪

  🍦 jack 🔷⏰🥐
  😀 🍪 🔤Jack’s choice of breakfast is 🔤 🔡jack 🍪
🍉
'
|
# tests/compilation/castToSelf.emojic
#
'🐇 🐟 🍇
  🐇🐖 🙋 a ⚪️ 🍇
    🙋 🍺 🔲 a 🐕
  🍉

  🔑 🐈 🆕 🍇🍉

  🐖 🙋 🍇
    😀 🔤If everybody had an ocean🔤
  🍉
🍉

🏁 🍇
  🍦 thatThing 🔷🐟🆕
  🍩🙋🐟 thatThing
🍉
'
|
# tests/compilation/valueTypeCopySelf.emojic
#
'🕊 🍔 🍇
  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Burger name: 🔤 name 🍪
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉

  🐖 🌈 🍇
    🍦 selfCopy 🐕
    🍩🦋🍔 selfCopy
  🍉

  🐖 🍀 🍇
    🍩🦋🍔 🐕
  🍉

  🐇🐖 🦋 burger 🍔 🍇
    😀 burger
  🍉
🍉

🏁 🍇
  🍦 burger 🔷🍔🆕 🔤Barbecue burger🔤 🍨 🔤onions🔤 🔤bbq sauce🔤 🍆
  😀 burger
  🍀 burger
  🌈 burger
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
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🙋 🍇
    😀 name
  🍉
🍉

🐇 🦆 🍇
  🍰 name 🍬🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🙋 🍇
    😀 🍺 name
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
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🥛 liters 🚀 ➡️ 🚀 🍇
    🍎 ✖️➗ liters ' <Number> ' ' <Number> '
  🍉

  🐖 🙋 🍇
    😀 name
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

  ✒️ 🐖 🥛 liters 🚀 ➡️ 🚀 🍇
    🍎 ➕🐿🥛 liters ' <Number> '
  🍉
🍉

🏁 🍇
  🍦 a 🔷🐟🆕 🔤Shawn🔤
  🍦 b 🔷🐡🆕

  🙋 a
  🙋 b
  😀🔡 🥛 a ' <Number> ' ' <Number> '
  😀🔡 🥛 b ' <Number> ' ' <Number> '
🍉
'
|
# tests/compilation/valueTypeSelf.emojic
#
'🕊 🌼 🍇
  🍰 number 🚂

  🐈 🆕 🍼 number 🚂 🍇🍉

  🐖 ☄️ ➡️ 🚂 🍇
    🍎 ✖️ number ' <Number> '
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
  🍰 vegan 👌
  🍰 filling 🔡
  🍰 weight 🚂

  🐈 🆕 🍼 vegan 👌 🍼 filling 🔡 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight ' <Number> ' 🔤kg croissant filled with 🔤 filling 🍪
    🍊 vegan 🍇
      😀 🔤The croissant is vegan!🔤
    🍉
  🍉
🍉

🏁 🍇
  🍦 croissantForCharly 🔷🥐🆕 👍 🔤Nutella🔤 ' <Number> '
  🍦 croissantForJoby 🔷🥐🆕 👍 🔤peanut butter🔤 ' <Number> '
  🍭 🍇
    😀 croissantForJoby
    😀 croissantForCharly
    🍦 croissantForFrank 🔷🥐🆕 👎 🔤jam🔤 ' <Number> '
    😀 croissantForFrank
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
  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Burger name: 🔤 name 🍪
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉
🍉

🐇 🍾 🍇
  🍰 hotness 🚀
  🍰 flavor 🔡
  🍰 amount 🚂

  🐈 🆕 🍼 hotness 🚀 🍼 flavor 🔡 🍼 amount 🚂 🍇
  🍉

  🐖 😀 🍇
    😀 🍪 🔤Sauce 🔤 flavor 🔤 🔤 🔡 amount ' <Number> ' 🔤ml Hot: 🔤 🔡 hotness ' <Number> ' 🍪
  🍉
🍉

🐇 📃 🍇
  🍰 burger 🍔
  🍰 drink 🍬🔡
  🍰 sauce 🍬🍾

  🐈 🆕 🍼 burger 🍔 🍼 drink 🍬🔡 🍼 sauce 🍬🍾 🍇
  🍉

  🐖 😀 🍇
    😀 burger
    🍊🍦 drink drink 🍇
      😀 🍪 🔤Drink: 🔤 drink 🍪
    🍉
    🍊🍦 sauce sauce 🍇
      😀 sauce
    🍉
  🍉

  🐇🐖 🤒 list 🍨🐚📃 🍇
    🔂 i ⏩ ' <Number> ' ' <Number> ' 🍇
      🍦 a 🔷📃🆕 🔷🍔🆕 🍪🔤Double Bacon🔤 🔡 i ' <Number> '🍪 🍨 🔤Bacon🔤 🔤Tomato🔤 🍆 ⚡️  🔷🍾🆕 ' <Number> ' 🍪🔤barbecue🔤 🔡 i ' <Number> '🍪 ' <Number> '
      🍦 b 🔷📃🆕 🔷🍔🆕 🍪🔤Triple Burger🔤 🔡 i ' <Number> '🍪  🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆 🔤Coke🔤 🔷🍾🆕 ' <Number> ' 🍪🔤chilli🔤 🔡 i ' <Number> '🍪 ' <Number> '
      🍦 c 🔷📃🆕 🔷🍔🆕 🍪🔤Cheeseburger🔤 🔡 i ' <Number> '🍪  🍨 🔤Cheese🔤 🍆 🔤Lemonade🔤 ⚡️
      🍦 d 🔷📃🆕 🔷🍔🆕 🍪🔤Standard Burger🔤 🔡 i ' <Number> '🍪  🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆 🔤Coke🔤 ⚡️
      🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
        🐻 list a
      🍉
      🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
        🐻 list b
      🍉
      🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
        🐻 list c
      🍉
      🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
        🐻 list d
      🍉
    🍉
  🍉
🍉

🏁 🍇
  🍦 ordersA 🔷🍨🐚📃🐸
  🍦 ordersB 🔷🍨🐚📃🐸
  🍦 ordersC 🔷🍨🐚📃🐸
  🍦 ordersD 🔷🍨🐚📃🐸

  🍦 threadA 🔷💈🆕 🍇
    🍩🤒📃 ordersA
  🍉
  🍦 threadB 🔷💈🆕 🍇
    🍩🤒📃 ordersB
  🍉
  🍦 threadC 🔷💈🆕 🍇
    🍩🤒📃 ordersC
  🍉
  🍦 threadD 🔷💈🆕 🍇
    🍩🤒📃 ordersD
  🍉

  🛂 threadA
  🛂 threadB
  🛂 threadC
  🛂 threadD

  🔂 o ordersA 🍇
    😀 o
  🍉
  🔂 o ordersB 🍇
    😀 o
  🍉
  🔂 o ordersC 🍇
    😀 o
  🍉
  🔂 o ordersD 🍇
    😀 o
  🍉
🍉
'
|
# tests/compilation/commonType.emojic
#
'🐊 💡 🍇
  🐖 🔦 degree 🚀
🍉

🐊 📞 🍇
  🐖 📞 number 🔡
🍉

🕊 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree ' <Number> ' 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 number 🍪
  🍉
🍉

🕊 🚁 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on spot light at 🔤 🔡 degree ' <Number> ' 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using radio network to call 🔤 number 🍪
  🍉
🍉

🐇 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 number 🍪
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree ' <Number> ' 🍪
  🍉
🍉

🏁 🍇
  🍦 stringList 🍨 🔤23456🔤 🔤12345643🔤 🍆
  🍰 g 🍨🐚🔡
  🍮 g stringList

  🍦 mobilePhoneList 🍨 🔷📱🆕 🔷📱🆕 🍆
  🍰 l 🍨🐚📱
  🍮 l mobilePhoneList

  🍦 phonableList 🍨 🔷📱🆕 🔷📱🆕 🔷☎️ 🆕 🍆
  🍰 a 🍨🐚📞
  🍮 a phonableList

  🍦 flashlightableList 🍨 🔷📱🆕 🔷🔦🆕 🍆
  🍰 b 🍨🐚💡
  🍮 b flashlightableList

  🍦 flashlightAndPhonableableList 🍨 🔷📱🆕 🔷🚁🆕 🍆
  🍰 q 🍨🐚🍱💡📞🍱
  🍮 q flashlightAndPhonableableList

  😀 🔤everything seems fine🔤
🍉
'
|
# tests/compilation/assignmentByCallInstanceVariable.emojic
#
'🐇 ⏲ 🍇
  🍰 days 🚂

  🐈 🆕 🍇
    🍮 days ' <Number> '
  🍉

  🐖 📆 🍇
    🍮➕ days ' <Number> '
  🍉

  🐖 📈 🍇
    🍮➕ days ' <Number> '
  🍉

  🐖 😀 🍇
    😀 🔡 days ' <Number> '
  🍉
🍉

🐇 📃 🍇
  🍰 text 🔡

  🐈 🆕 🍇
    🍮 text 🔤1234🔤
  🍉

  🐖 🖋 🍇
    🍮📝 text 🔟5
  🍉

  🐖 😀 🍇
    😀 text
  🍉
🍉

🏁 🍇
  🍦 stopwatch 🔷⏲🆕
  📆 stopwatch
  📈 stopwatch
  😀 stopwatch

  🍦 doc 🔷📃🆕
  🖋 doc
  😀 doc
🍉
'
|
# tests/compilation/assignmentByCallProtocol.emojic
#
'🐊 ➕🐚T⚪️ 🍇
  🐖 ➕ n T ➡️ T
🍉

🐋 🚂 🍇
  🐊➕🐚🚂
🍉

🏁 🍇
  🍰 a ➕🐚🚂
  🍮 a ' <Number> '

  🍮➕ a ' <Number> '
  🍮➕ a ' <Number> '

  🍦 integer 🍺🔲 a 🚂
  😀 🔡 integer ' <Number> '
🍉
'
|
# tests/compilation/protocolValueType.emojic
#
'🐊 💡 🍇
  🐖 🔦 degree 🚀
🍉

🐊 📞 🍇
  🐖 📞 number 🔡
  🐖 🔙 ➡️ 🔡
🍉

🕊 📱 🍇
  🐊 📞
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 😷 🍇
    😀 🔤This method is never called🔤
  🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree ' <Number> ' 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using cellular network to call 🔤 number 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤2493928289293🔤
  🍉
🍉

🕊 ☎️ 🍇
  🐊 📞

  🐈 🆕 🍇🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤From a landline, calling 🔤 number 🍪
  🍉

  🐖 🔙➡️ 🔡 🍇
    🍎 🔤5969202056🔤
  🍉
🍉

🕊 🔦 🍇
  🐊 💡

  🐈 🆕 🍇🍉

  🐖 🔦 degree 🚀 🍇
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree ' <Number> ' 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 lightEmitting 💡 🍇
    🔦 lightEmitting ' <Number> '
  🍉

  🐇🐖 📞 phoneCapabilities 📞 🍇
    📞 phoneCapabilities 🔤2929294757🔤
    😀 🔙phoneCapabilities
  🍉
🍉

🏁 🍇
  🍦 iphone 🔷📱🆕

  🍩💡🥊 iphone
  🍩📞🥊 iphone
  🍩📞🥊 🔷☎️🆕
  🍩💡🥊 🔷🔦🆕
🍉
'
|
# tests/compilation/assignmentByCall.emojic
#
'🏁 🍇
  🍮 a ' <Number> '

  🍮➕ a ' <Number> '
  😀 🔡 a ' <Number> '

  🍮➕ a ' <Number> '
  😀 🔡 a ' <Number> '

  🍮➖ a ' <Number> '
  😀 🔡 a ' <Number> '

  🍮➖ a ' <Number> '
  😀 🔡 a ' <Number> '

  🍮 b ' <Number> '

  🍮✖️ b ' <Number> '
  😀 🔡 b ' <Number> '

  🍮➗ b ' <Number> '
  😀 🔡 b ' <Number> '

  🍮👈 b ' <Number> '
  😀 🔡 b ' <Number> '

  🍮 ➕ b ' <Number> '
  😀 🔡 b ' <Number> '

  🍮 c 🔤test🔤

	🍮📝 c 🔟1
	😀 c

	🍮📝 c 🔟2
	😀 c
🍉
'
|
# tests/compilation/enumTypeMethod.emojic
#
'🦃 ⏰ 🍇
  🔘🥓
  🔘🥞
  🔘🥐

  🐇🐖 🔡 human 🔡 ➡️ ⏰ 🍇
    🍊 😛 human 🔤croissant🔤 🍇
      🍎 🔷⏰🥐
    🍉
    🍊 😛 human 🔤pancakes🔤 🍇
      🍎 🔷⏰🥞
    🍉
    🍊 😛 human 🔤bacon🔤 🍇
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
	🍦 you 🍩🔡⏰ 🔤pancakes🔤
  😀 🍪 🔤Your choice of breakfast is 🔤 🔡you 🍪
🍉
'
|
# tests/compilation/variableInitAndScoping.emojic
#
'🏁 🍇
  🔂 i ⏩ ' <Number> ' ' <Number> ' 🍇
    😀 🍪🔤i=🔤 🔡i ' <Number> '🍪
    🍰 a 🍬🔡
    🔂 b 🍨 🔤0🔤 🔤1🔤 🔤2🔤 🍆 🍇
      🍊 ❎☁️a 🍇
        😀 🍺a
      🍉
      🍮 a b
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
  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Burger name: 🔤 name 🍪
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉
🍉

🕊 🍾 🍇
  🍰 hotness 🚀
  🍰 flavor 🔡
  🍰 amount 🚂

  🐈 🆕 🍼 hotness 🚀 🍼 flavor 🔡 🍼 amount 🚂 🍇
  🍉

  🐖 😀 🍇
    😀 🍪 🔤Sauce 🔤 flavor 🔤 🔤 🔡 amount ' <Number> ' 🔤ml Hot: 🔤 🔡 hotness ' <Number> ' 🍪
  🍉
🍉

🐇 📃 🍇
  🍰 burger 🍔
  🍰 drink 🍬🔡
  🍰 sauce 🍬🍾

  🐈 🆕 🍼 burger 🍔 🍼 drink 🍬🔡 🍼 sauce 🍬🍾 🍇
  🍉

  🐖 😀 🍇
    😀 burger
    🍊🍦 drink drink 🍇
      😀 🍪 🔤Drink: 🔤 drink 🍪
    🍉
    🍊🍦 sauce sauce 🍇
      😀 sauce
    🍉
  🍉
🍉

🏁 🍇
  🍦 orders 🔷🍨🐚📃🐸

  🔂 i ⏩ ' <Number> ' ' <Number> ' 🍇
    🍦 a 🔷📃🆕 🔷🍔🆕 🍪🔤Double Bacon🔤 🔡 i ' <Number> '🍪 🍨 🔤Bacon🔤 🔤Tomato🔤 🍆 ⚡️  🔷🍾🆕 ' <Number> ' 🍪🔤barbecue🔤 🔡 i ' <Number> '🍪 ' <Number> '
    🍦 b 🔷📃🆕 🔷🍔🆕 🍪🔤Triple Burger🔤 🔡 i ' <Number> '🍪  🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆 🔤Coke🔤 🔷🍾🆕 ' <Number> ' 🍪🔤chilli🔤 🔡 i ' <Number> '🍪 ' <Number> '
    🍦 c 🔷📃🆕 🔷🍔🆕 🍪🔤Cheeseburger🔤 🔡 i ' <Number> '🍪  🍨 🔤Cheese🔤 🍆 🔤Lemonade🔤 ⚡️
    🍦 d 🔷📃🆕 🔷🍔🆕 🍪🔤Standard Burger🔤 🔡 i ' <Number> '🍪  🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆 🔤Coke🔤 ⚡️
    🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
      🐻 orders a
    🍉
    🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
      🐻 orders b
    🍉
    🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
      🐻 orders c
    🍉
    🍊 😛 🚮 i ' <Number> ' ' <Number> ' 🍇
      🐻 orders d
    🍉
  🍉

  🔂 o orders 🍇
    😀 o
  🍉
🍉
'
|
# tests/compilation/classInheritance.emojic
#
'🐇 🐟 🍇
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🙋 🍇
    😀 name
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
  🍦 a 🔷🐟🆕 🔤Shawn🔤
  🍦 c 🔷🐡🆕
  🍦 u 🔷🌕🆕

  🙋 a
  🙋 c
  🥛 c
  🙋 u
  🥛 u
  💎 u
  🥞 u
🍉
'
|
# tests/compilation/protocolGenericLayerClass.emojic
#
'🐊 📠🐚A⚪️ 🍇
  🐖 ⏱ a A
  🐖 🚚 ➡️ A
🍉

🕊 🍔 🍇
  🍰 name 🍬🔡
  🍰 ingredients 🍨🐚🔡

  🐈 🆕 🍼 name 🍬🔡 🍼 ingredients 🍨🐚🔡 🍇
  🍉

  🐖 😀 🍇
    🍊🍦 name name 🍇
      😀 🍪 🔤Burger name: 🔤 name 🍪
    🍉
    😀 🔷🔡🍨 ingredients 🔤, 🔤
  🍉
🍉

🐇 🏨 🍇
  🐊 📠🐚🚂

  🐈 🆕 🍇🍉

  🐖 ⏱ roomNumber 🚂 🍇
    😀 🍪 🔤Requested 🔤 🔡 roomNumber ' <Number> ' 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 ' <Number> '
  🍉
🍉

🐇 🏣 🍇
  🐊 📠🐚🍔

  🐈 🆕 🍇🍉

  🐖 ⏱ burgerType 🍔 🍇
    😀 🍪 🔤Requested 🔤 🍪
    😀 burgerType
  🍉

  🐖 🚚 ➡️ 🍔 🍇
    🍎 🔷🍔🆕 🔤Triple Burger🔤 🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆
  🍉
🍉

🏁 🍇
  🍰 a 📠🐚🚂
  🍮 a 🔷🏨🆕

  ⏱ a ' <Number> '
  😀🔡 🚚 a ' <Number> '

  🍰 b 📠🐚🍔
  🍮 b 🔷🏣🆕

  ⏱ b 🔷🍔🆕 🔤Standard Burger🔤 🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆
  😀 🚚 b
🍉
'
		}
	}
