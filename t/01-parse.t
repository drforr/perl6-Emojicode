use Test;
use Emojicode::Grammar;

my $e = Emojicode::Grammar.new;

# tests/compilation/protocolSubclass.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💡 🍇
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
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree 3 🍪
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
    😀 🍪 🔤Turning on display at 🔤 🔡 degree 3 🍪
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
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree 3 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 lightEmitting 💡 🍇
    🔦 lightEmitting 0.3
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
_END_

# tests/compilation/protocolValueTypeRemote.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💷 🍇
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
_END_

# tests/compilation/if.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
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
_END_

# tests/compilation/protocolGenericLayerValueType.emojic
#
ok $e.parse( q:to[_END_] );
🐊 📠🐚A⚪️ 🍇
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
    😀 🍪 🔤Requested 🔤 🔡 roomNumber 10 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 153
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

  ⏱ a 311
  😀🔡 🚚 a 10

  🍰 b 📠🐚🍔
  🍮 b 🔷🏣🆕

  ⏱ b 🔷🍔🆕 🔤Standard Burger🔤 🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆
  😀 🚚 b
🍉
_END_

# tests/compilation/sequenceTypes.emojic
#
ok $e.parse( q:to[_END_] );
🌍 🐇 🤘🏻 🍇
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
_END_

# tests/compilation/closureCapture.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🍤 🍇
  🐇🐖 🙋 name 🔡 ➡️ 🍇🚂➡️🔡🍉 🍇
    🍎 🍇 hour 🚂 ➡️ 🔡
      🍊 😛 hour 12 🍇
        🍎 🍪 🔤Have a good lunch, 🔤 name🍪
      🍉
      🍎 🍪 🔤Hello, 🔤 name🍪
    🍉
  🍉

  👴 Returns a functional ID card
  🐇🐖 👌🏾 name 🔡 age 🚂 birthplace 🔡 height 🚀 ➡️ 🍇➡️🔡🍉 🍇
    🍊 ⬅️ age 12 🍇
      🍎 🍇 ➡️🔡 🍎 🍪 🔤It’s a kid born in 🔤 birthplace 🔤 named 🔤 name 🍪 🍉
    🍉
		🍎 🍇 ➡️🔡 🍎 🍪 name 🔤: Born in 🔤 birthplace  🔤 and 🔤 🔡 height 3 🔤 meters tall.🔤 🍪 🍉
  🍉
🍉

🏁 🍇
  🍦 florenceGreeter 🍩🙋🍤 🔤Florence🔤
  😀 🍭 florenceGreeter 14
  😀 🍭 florenceGreeter 12
  😀 🍭 florenceGreeter 14

  🍦 violetGreeter 🍩🙋🍤 🔤Violet🔤
  😀 🍭 violetGreeter 14
  😀 🍭 violetGreeter 12
  😀 🍭 violetGreeter 12

	🍦 alistairID 🍩👌🏾🍤 🔤Alistair🔤 10	🔤Cambridge🔤 1.41
	😀 🍭 alistairID

	🍦 zachID 🍩👌🏾🍤 🔤Zach🔤 32 🔤Derry🔤 1.83
	😀 🍭 zachID
🍉
_END_

# tests/compilation/valueType.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🌼 🍇
  🍰 abc 🔡
  🍰 zahl 🚂

  🐈 🆕 🍼 abc 🔡 zahlIn 🚂 🍇
    🍮 zahl ➕ zahlIn 4
  🍉

  🐖 😀 🍇
    😀 abc
    😀 🔡 zahl 10
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
    🍮 blume2 🔷🌼🆕 🍪 name 🔤_2🔤 🍪 4
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
    🍮 blume2 🔷⚫️🆕 🔤sport🔤 192
  🍉

  🐖 🥐 ➡️ 🔡 🍇
    🍎 🍐 blume1
  🍉

  🐖 🌼 ➡️ ⚖️ 🍇
    🍎 🔷⚫️🆕 blume2 🌼 blume1
  🍉
🍉

🏁 🍇
  🍦 ph 🔷🌼🆕 🔤Philadelphia🔤 32
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
_END_

# tests/compilation/genericsValueType.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🎁 🐚 T 🔵 🍇

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
_END_

# tests/compilation/errorAvocado.emojic
#
ok $e.parse( q:to[_END_] );
🦃 🏜 🍇
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
    🍎 🔤I see you coming and I don't wanna know your name🔤
  🍉

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🍟
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🍎 🔤I see you coming and I don't wanna know your name🔤
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
_END_

# tests/compilation/gcStressTest1.emojic
#
ok $e.parse( q:to[_END_] );
🐇 😇 🍇
  🍰 string 🔡

  🐈 🆕 int 🚂 🍇
    🍮 string 🍪🔤Music is a world within itself 🔤 🔡 int 10 🍪
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
  🍦 list 🍨🔷🤣🆕 -1🍆
  🔂 i ⏩ 0 40000000 🍇
    🍦 _ 🔷🍗🆕
    🍊 😛 🚮 i 100000 0 🍇
      🐻 list 🔷🤣🆕 i
    🍉
  🍉
  🔂 o list 🍇
    🦆 o
  🍉
🍉
_END_

# tests/compilation/gcStressTest4.emojic
#
ok $e.parse( q:to[_END_] );
🕊 😇 🍇
  🍰 string 🔡

  🐈 🆕 int 🚂 🍇
    🍮 string 🍪🔤Music is a world within itself 🔤 🔡 int 10 🍪
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
  🍦 list 🍨🔷🤣🆕 -1🍆
  🔂 i ⏩ 0 40000000 🍇
    🍦 _ 🔷🍗🆕
    🍊 😛 🚮 i 100000 0 🍇
      🐻 list 🔷🤣🆕 i
    🍉
  🍉
  🔂 o list 🍇
    🦆 o
  🍉
🍉
_END_

# tests/compilation/hello.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  😀 🔤Hello world!🔤
  😀 🔤Привет мир!🔤
  😀 🔤你好，世界！🔤
🍉
_END_

# tests/compilation/piglatin.emojic
#
ok $e.parse( q:to[_END_] );
🐋 🔡 🍇
  🐖 🐷 ➡️ 🔡 🍇
    🍦 firstLetter 🔪 🐕 0 1
    🍦 rest 🔪 🐕 1 🐔 🐕
    🍎 🍪 rest firstLetter 🔤ay🔤 🍪
  🍉
🍉

🏁 🍇
  😀 🐷 🔤cat🔤
  😀 🐷 🔤development🔤
  😀 🐷 🔤computer🔤
🍉
_END_

# tests/compilation/protocolEnum.emojic
#
ok $e.parse( q:to[_END_] );
🐊 🇨🇭 🍇
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
_END_

# tests/compilation/enum.emojic
#
ok $e.parse( q:to[_END_] );
🦃 🏷 🍇
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
_END_

# tests/compilation/genericProtocol.emojic
#
ok $e.parse( q:to[_END_] );
🐊 🦀🐚Key⚪️🐚Element⚪️ 🍇
	🐖 🦀 key Key ➡️ Element
🍉

🐇 🐾 🐚Element⚪️ 🍇
	🐊 🦀🐚🔡🐚Element

	🐈 🆕 🍇

	🍉

	🐖 🦀 key 🔡 ➡️ Element 🍇
		🍎 23
	🍉
🍉

🏁 🍇
  🍰 a 🦀🐚🔡🐚🚂
  🍮 a 🔷🐾🐚🚂🆕

  😀 🔡 🦀 a 🔤asdfsadf🔤 10
🍉
_END_

# tests/compilation/included.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🐤 🍇
  🐇🐖 💐 🍇
    😀 🔤If I let you go aside🔤
  🍉
🍉
_END_

# tests/compilation/downcastClass.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
_END_

# tests/compilation/repeatWhile.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  🍮 a 0

  🔁 ◀️ a 10 🍇
    😀 🔡 a 10
    🍮➕ a 1
  🍉
🍉
_END_

# tests/compilation/class.emojic
#
ok $e.parse( q:to[_END_] );
🐇 😮 🍇
	🐇🐖 🐸 a 🔡 ➡️ 😮 🍇
		🍎 🔷 🐕 🆕
	🍉

	🔑 🐈 🆕 🍇
		😀 🔤I'm in 😮🔤
	🍉

🍉

🐇 😴 😮 🍇

	🔑 🐈 🤗 🍇
		😀 🔤I'm in 🤗🔤
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		😀 🔤I'm in 😴🔤
		🐐 🆕
	🍉

🍉

🐇 👮 😴 🍇

	🐈 😵 🍇
		😀 🔤I'm in 😵 sub🔤
		🐐 🆕
	🍉

	🔑 🐈 🆕 🍇
		😀 🔤I'm in 😴 sub🔤
		🐐 🆕
	🍉

	🔑 🐈 🤗 🍇
		😀 🔤I'm in 🤗 sub🔤
		🐐 🆕
	🍉

	🐈 🤐 🍇
		😀 🔤I'm in 🤐 sub🔤
		🐐 🆕
	🍉

🍉

🏁 🍇
	🍩🐸😮 🔤test🔤
	🍩🐸😴 🔤test2🔤
	🍩🐸👮 🔤test2🔤
🍉
_END_

# tests/compilation/reflection.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
_END_

# tests/compilation/threads.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🏦 🍇
  🍰 account 🚂

  🐈 🆕 🍇
    🍮 account 300
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

  🔂 i ⏩ 0 10 🍇
    🐻 threads 🔷💈🆕 🍇
      🔂 j ⏩ 0 5 🍇
        🔒 mutex
        🍊 ➡️ 💶 account 10 🍇
          😀 🔤Money, money, money – Must be funny🔤
          💸 account 10
        🍉
        🔓 mutex
      🍉
    🍉
  🍉

  🔂 thread threads 🍇
    🛂 thread
  🍉

  😀 🔡 💶 account 10 👴 Print the balance
🍉
_END_

# tests/compilation/closureCaptureThis.emojic
#
ok $e.parse( q:to[_END_] );
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

🏁 🍇
  🍦 pi 🔷🕵🐑 🔤Arthur Lemming🔤
  🍦 nameGetter 💳 pi

  😀 🍭 nameGetter

  🏷 pi 🔤Sherlock Holmes🔤

  😀 🍭 nameGetter

  🏷 pi 🔤Thomas Magnum🔤

  😀 🍭 nameGetter
🍉
_END_

# tests/compilation/namespace.emojic
#
ok $e.parse( q:to[_END_] );
📦 s 💊

🐇 🔶🎅🎁 🍇
  🐇🐖 🙂 🍇
    😀 🔤The course of true love never did run smooth.🔤
  🍉
🍉

🏁 🍇
  🍩🙂🔶🎅🎁
  🍰 list 🍨🐚🔡
  🍮 list 🔷🔶💊🍨🐚🔡🐸
  😀 🔡 🐔 list 10
🍉
_END_

# tests/compilation/protocolClass.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💡 🍇
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
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree 3 🍪
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
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree 3 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 lightEmitting 💡 🍇
    🔦 lightEmitting 0.3
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
_END_

# tests/compilation/includer.emojic
#
ok $e.parse( q:to[_END_] );
📜 🔤included.emojic🔤

🏁 🍇
  🍩💐🐤
🍉
_END_

# tests/compilation/castGenericValueType.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🥛🐚 T ⚪️ 🍇
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
  🍮 a 🔷🥛🐚🚂🆕 4
  🍰 b ⚪️
  🍮 b 🔷🥛🐚🔡🆕 🔤moment🔤

  😀 🔡 🥔 🍺 🔲 a 🥛🐚🚂 10
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
_END_

# tests/compilation/valueTypeRemoteAdditional.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🏠 🍇
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
_END_

# tests/compilation/valueTypeMutate.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🌼 🍇
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
_END_

# tests/compilation/conditionalProduce.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🥙 🍇
  🍰 tomatoes 🚂
  🍰 salad 👌
  🍰 chicken 🚂
  🍰 weight 🚂

  🐈 🆕 🍼 tomatoes 🚂 🍼 salad 👌 🍼 chicken 🚂 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight 10 🔤kg pita filled with 🔤 🔡 tomatoes 10 🔤 tomatoes and 🔤 🔡 chicken 10 🔤g of chicken.🔤 🍪
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
  🍮 d 🔷🥙🆕 2 👎 200 2
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
_END_

# tests/compilation/classSubInstanceVar.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🙈 🍇
	🍰 weight 🚂

	🐈 🆕 🍼 weight 🚂 🍇🍉

  🐖 🏋️ 🍇
    😀🔡 weight 10
  🍉
🍉

🐇 🐰 🙈 🍇
  🍰 earLength 🚂

  🐈 🆕 🍼 earLength 🚂 weight 🚂 🍇
    🐐🆕 weight
  🍉

  🐖 📏 🍇
    😀🔡 earLength 10
  🍉
🍉


🏁 🍇
	🍦 rabbit 🔷🐰🆕 20 10
  🍦 animal 🔷🙈🆕 10
  🏋️ rabbit
  📏 rabbit
  🏋️ animal
🍉
_END_

# tests/compilation/chaining.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
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
_END_

# tests/compilation/protocolSelfGeneric.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💿 🍇
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
  🍩🏀📻 🐚🌗 🔷🌗🆕 3 🔷🌗🆕 45
  🍩🏀📻 🐚🌗 🔷🌗🆕 4 🔷🌗🆕 4
🍉
_END_

# tests/compilation/genericProtocolValueType.emojic
#
ok $e.parse( q:to[_END_] );
🐊 🦀🐚Key⚪️🐚Element⚪️ 🍇
	🐖 🦀 key Key ➡️ Element
🍉

🕊 🐾 🐚Element⚪️ 🍇
	🐊 🦀🐚🔡🐚Element

	🐈 🆕 🍇

	🍉

	🐖 🦀 key 🔡 ➡️ Element 🍇
		🍎 23
	🍉
🍉

🏁 🍇
  🍰 a 🦀🐚🔡🐚🚂
  🍮 a 🔷🐾🐚🚂🆕

  😀 🔡 🦀 a 🔤asdfsadf🔤 10
🍉
_END_

# tests/compilation/captureTypeMethod.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🕵 🍇
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
_END_

# tests/compilation/typeAlias.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🔶🎅🎁 🍇
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
_END_

# tests/compilation/protocolMulti.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💡 🍇
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
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree 3 🍪
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
    😀 🍪 🔤Turning on spot light at 🔤 🔡 degree 3 🍪
  🍉

  🐖 📞 number 🔡 🍇
    😀 🍪 🔤Using radio network to call 🔤 number 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 🎇 device 🍱📞💡🍱 🍇
    📞 device 🔤2929294757🔤
    🔦 device 0.3
  🍉
🍉

🏁 🍇
  🍩🎇🥊 🔷🚁🆕
  🍩🎇🥊 🔷📱🆕
🍉
_END_

# tests/compilation/intTest.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  😀 🔡 -123 10
  😀 🔡 -899799324 10
  😀 🔡 94999 10
🍉
_END_

# tests/compilation/errorIsError.emojic
#
ok $e.parse( q:to[_END_] );
🦃 🏜 🍇
  🔘🔋
  🔘🍟
🍉

🐇 🐟 🍇
  🐇🐖 🙅 ➡️ 🚨🏜🔡 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋 ➡️ 🚨🏜🔡 🍇
    🍎 🔤I see you coming and I don't wanna know your name🔤
  🍉

  🐇🐖 🙅‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🚨🔷🏜🔋
  🍉

  🐇🐖 🙋‍♂️ ➡️ 🚨🏜⚪️ 🍇
    🍎 🔤I see you coming and I don't wanna know your name🔤
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
_END_

# tests/compilation/classOverride.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
_END_

# tests/compilation/isNothingness.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🥐 🍇
  🍰 vegan 👌
  🍰 filling 🔡
  🍰 weight 🚂

  🐈 🆕 🍼 vegan 👌 🍼 filling 🔡 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight 10 🔤kg croissant filled with 🔤 filling 🍪
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
  🍮 b 2422
  🍮 c 🔷🥐🆕 👍 🔤vanilla🔤 19
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
_END_

# tests/compilation/captureMethod.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🕵 🍇
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
_END_

# tests/compilation/castAny.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
    😀 🍪 🔤You ordered a 🔤 🔡 weight 10 🔤kg croissant filled with 🔤 filling 🍪
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
    😀 🍪 🔤You ordered a 🔤 🔡 weight 10 🔤kg pita filled with 🔤 🔡 tomatoes 10 🔤 tomatoes and 🔤 🔡 chicken 10 🔤g of chicken.🔤 🍪
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
  🍮 c 🔷🥐🆕 👎 🔤chocolate🔤 23
  🍰 d ⚪️
  🍮 d 49292
  🍰 e ⚪️
  🍮 e 🔷🐡🆕
  🍰 f ⚪️
  🍮 f 🔷⏰🥐
  🍰 g ⚪️
  🍮 g 🔷🥙🆕 2 👎 200 2

  🙋 🍺 🔲 a 🐟
  😀 🍺 🔲 b 🔡
  😀 🍺 🔲 c 🥐
  😀 🔡 🍺 🔲 d 🚂 10
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
_END_

# tests/compilation/privateMethod.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
    🍎 23
  🍉
🍉

🏁 🍇
  😇🔷🐟🆕
  😇🔷🐡🆕
🍉
_END_

# tests/compilation/unwrap.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  🍰 a 🍬🔡
  🍰 b 🍬🔡
  🍰 c 🍬🔡

  🍮 a 🔤Did🔤
  🍮 b ⚡️
  🍮 c 🔤hear🔤

  😀 🍺a
  😀 🍺c
🍉
_END_

# tests/compilation/closureBasic.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  🍦 greet 🍇 name 🔡
    😀 🍪🔤It is a plesaure to welcome the honorable 🔤 name🍪
  🍉

  🍭 greet 🔤Hans🔤
  🍭 greet 🔤Gustav🔤
  🍭 greet 🔤Linda🔤

  😀 🔤End of program🔤
🍉
_END_

# tests/compilation/callable.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  🍦 string 🔤Krass🔤

  🍦 append 🌶 📝 string

  😀 🍭 append 🔟!
  😀 🍭 append 🔟?

  🍦 greet 🍇 name 🔡 ➡️ 🔡
    😀 🍪🔤Wir grüßen den Ehrwürdigen 🔤 name🍪

    🍮 out 🔤🔤

    🔂 i️ ⏩ ➖ 🐔 name 1 -1 🍇
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
  😀 🍭 walfriedGrüßer 14
  😀 🍭 walfriedGrüßer 12
  😀 🍭 walfriedGrüßer 14

  🍦 captured 🌶🍩🎂⚽️
  😀 🍭 captured

  🍦 capturedITS 🌶🔡23
  😀 🍭 capturedITS 10
  😀 🍭 capturedITS 2

  🍦 capturedPI 🌶🍩⚾️🚀
  😀 🔡 🍭 capturedPI 4
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
      🍊 😛 hour 12 🍇
        🍎 🍪 🔤Have a good lunch, 🔤 name🍪
      🍉
      🍎 🍪 🔤Hello, 🔤 name🍪
    🍉
  🍉
🍉
_END_

# tests/compilation/errorInitializer.emojic
#
ok $e.parse( q:to[_END_] );
🦃 🏜 🍇
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
_END_

# tests/compilation/generics.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🎁 🐚 T 🔵 🍇

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
_END_

# tests/compilation/selfInDeclaration.emojic
#
ok $e.parse( q:to[_END_] );
🐊 😛 🍇
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
_END_

# tests/compilation/valueTypeBoxCopySelf.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💷 🍇
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
_END_

# tests/compilation/enumMethod.emojic
#
ok $e.parse( q:to[_END_] );
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
	🍦 you 🔷⏰🥞
  😀 🍪 🔤Your choice of breakfast is 🔤 🔡you 🍪

  🍦 jack 🔷⏰🥐
  😀 🍪 🔤Jack’s choice of breakfast is 🔤 🔡jack 🍪
🍉
_END_

# tests/compilation/castToSelf.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
_END_

# tests/compilation/valueTypeCopySelf.emojic
#
ok $e.parse( q:to[_END_] );
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
_END_

# tests/compilation/errorPerfect.emojic
#
ok $e.parse( q:to[_END_] );
🦃 🏜 🍇
  🔘🔋
  🔘🍟
🍉

🐇 🐟 🍇
  🐇🐖 🙋 ➡️ 🚨🏜🔡 🍇
    🍎 🔤I see you coming and I don't wanna know your name🔤
  🍉
🍉

🏁 🍇
  😀 🚇 🍩🙋🐟
🍉
_END_

# tests/compilation/babyBottleInitializer.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
_END_

# tests/compilation/classSuper.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
  🍰 name 🔡

  🐈 🆕 🍼 name 🔡 🍇🍉

  🐖 🥛 liters 🚀 ➡️ 🚀 🍇
    🍎 ✖️➗ liters 1000 1027
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
    🍎 ➕🐿🥛 liters 0.25
  🍉
🍉

🏁 🍇
  🍦 a 🔷🐟🆕 🔤Shawn🔤
  🍦 b 🔷🐡🆕

  🙋 a
  🙋 b
  😀🔡 🥛 a 20 4
  😀🔡 🥛 b 20 4
🍉
_END_

# tests/compilation/valueTypeSelf.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🌼 🍇
  🍰 number 🚂

  🐈 🆕 🍼 number 🚂 🍇🍉

  🐖 ☄️ ➡️ 🚂 🍇
    🍎 ✖️ number 3
  🍉

  🐖 😀 🍇
    😀 🔡 ☄️🐕 10
  🍉
🍉

🏁 🍇
  😀 🔷🌼🆕 111
🍉
_END_

# tests/compilation/closureCaptureValueType.emojic
#
ok $e.parse( q:to[_END_] );
🕊 🥐 🍇
  🍰 vegan 👌
  🍰 filling 🔡
  🍰 weight 🚂

  🐈 🆕 🍼 vegan 👌 🍼 filling 🔡 🍼 weight 🚂 🍇🍉

  🐖 😀 🍇
    😀 🍪 🔤You ordered a 🔤 🔡 weight 10 🔤kg croissant filled with 🔤 filling 🍪
    🍊 vegan 🍇
      😀 🔤The croissant is vegan!🔤
    🍉
  🍉
🍉

🏁 🍇
  🍦 croissantForCharly 🔷🥐🆕 👍 🔤Nutella🔤 2
  🍦 croissantForJoby 🔷🥐🆕 👍 🔤peanut butter🔤 5
  🍭 🍇
    😀 croissantForJoby
    😀 croissantForCharly
    🍦 croissantForFrank 🔷🥐🆕 👎 🔤jam🔤 1
    😀 croissantForFrank
  🍉
🍉
_END_

# tests/compilation/extension.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  😀 😈 🔤James Tiberius Kirk🔤
🍉

🐋 🔡 🍇
  🐖 😈 ➡️ 🔡 🍇
    🍎 🔪 🐕 0 5
  🍉
🍉
_END_

# tests/compilation/gcStressTest3.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🍔 🍇
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
    😀 🍪 🔤Sauce 🔤 flavor 🔤 🔤 🔡 amount 10 🔤ml Hot: 🔤 🔡 hotness 10 🍪
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
    🔂 i ⏩ 0 1_000_000 🍇
      🍦 a 🔷📃🆕 🔷🍔🆕 🍪🔤Double Bacon🔤 🔡 i 10🍪 🍨 🔤Bacon🔤 🔤Tomato🔤 🍆 ⚡️  🔷🍾🆕 0.3 🍪🔤barbecue🔤 🔡 i 10🍪 12
      🍦 b 🔷📃🆕 🔷🍔🆕 🍪🔤Triple Burger🔤 🔡 i 10🍪  🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆 🔤Coke🔤 🔷🍾🆕 1.0 🍪🔤chilli🔤 🔡 i 10🍪 20
      🍦 c 🔷📃🆕 🔷🍔🆕 🍪🔤Cheeseburger🔤 🔡 i 10🍪  🍨 🔤Cheese🔤 🍆 🔤Lemonade🔤 ⚡️
      🍦 d 🔷📃🆕 🔷🍔🆕 🍪🔤Standard Burger🔤 🔡 i 10🍪  🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆 🔤Coke🔤 ⚡️
      🍊 😛 🚮 i 20000 0 🍇
        🐻 list a
      🍉
      🍊 😛 🚮 i 30000 0 🍇
        🐻 list b
      🍉
      🍊 😛 🚮 i 70000 0 🍇
        🐻 list c
      🍉
      🍊 😛 🚮 i 50000 0 🍇
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
_END_

# tests/compilation/commonType.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💡 🍇
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
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree 3 🍪
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
    😀 🍪 🔤Turning on spot light at 🔤 🔡 degree 3 🍪
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
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree 3 🍪
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
_END_

# tests/compilation/assignmentByCallInstanceVariable.emojic
#
ok $e.parse( q:to[_END_] );
🐇 ⏲ 🍇
  🍰 days 🚂

  🐈 🆕 🍇
    🍮 days 0
  🍉

  🐖 📆 🍇
    🍮➕ days 1
  🍉

  🐖 📈 🍇
    🍮➕ days 360
  🍉

  🐖 😀 🍇
    😀 🔡 days 10
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
_END_

# tests/compilation/assignmentByCallProtocol.emojic
#
ok $e.parse( q:to[_END_] );
🐊 ➕🐚T⚪️ 🍇
  🐖 ➕ n T ➡️ T
🍉

🐋 🚂 🍇
  🐊➕🐚🚂
🍉

🏁 🍇
  🍰 a ➕🐚🚂
  🍮 a 0

  🍮➕ a 1
  🍮➕ a 13

  🍦 integer 🍺🔲 a 🚂
  😀 🔡 integer 10
🍉
_END_

# tests/compilation/protocolValueType.emojic
#
ok $e.parse( q:to[_END_] );
🐊 💡 🍇
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
    😀 🍪 🔤Turning on camera flash light at 🔤 🔡 degree 3 🍪
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
    😀 🍪 🔤Turning on flashlight at 🔤 🔡 degree 3 🍪
  🍉
🍉

🐇 🥊 🍇
  🐇🐖 💡 lightEmitting 💡 🍇
    🔦 lightEmitting 0.3
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
_END_

# tests/compilation/assignmentByCall.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  🍮 a 0

  🍮➕ a 1
  😀 🔡 a 10

  🍮➕ a 1
  😀 🔡 a 10

  🍮➖ a 1
  😀 🔡 a 10

  🍮➖ a 1
  😀 🔡 a 10

  🍮 b 2

  🍮✖️ b 2
  😀 🔡 b 10

  🍮➗ b 2
  😀 🔡 b 10

  🍮👈 b 2
  😀 🔡 b 10

  🍮 ➕ b 17
  😀 🔡 b 10

  🍮 c 🔤test🔤

	🍮📝 c 🔟1
	😀 c

	🍮📝 c 🔟2
	😀 c
🍉
_END_

# tests/compilation/enumTypeMethod.emojic
#
ok $e.parse( q:to[_END_] );
🦃 ⏰ 🍇
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
_END_

# tests/compilation/variableInitAndScoping.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  🔂 i ⏩ 0 3 🍇
    😀 🍪🔤i=🔤 🔡i 10🍪
    🍰 a 🍬🔡
    🔂 b 🍨 🔤0🔤 🔤1🔤 🔤2🔤 🍆 🍇
      🍊 ❎☁️a 🍇
        😀 🍺a
      🍉
      🍮 a b
    🍉
  🍉
🍉
_END_

# tests/compilation/stringConcat.emojic
#
ok $e.parse( q:to[_END_] );
🏁 🍇
  😀 🍪🔤Hello🥐 🔤 🔤你好，世界！🔤  🔤🥝 wo🔤 🔤rld!🔤🍪
🍉
_END_

# tests/compilation/gcStressTest2.emojic
#
ok $e.parse( q:to[_END_] );
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

🕊 🍾 🍇
  🍰 hotness 🚀
  🍰 flavor 🔡
  🍰 amount 🚂

  🐈 🆕 🍼 hotness 🚀 🍼 flavor 🔡 🍼 amount 🚂 🍇
  🍉

  🐖 😀 🍇
    😀 🍪 🔤Sauce 🔤 flavor 🔤 🔤 🔡 amount 10 🔤ml Hot: 🔤 🔡 hotness 10 🍪
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

  🔂 i ⏩ 0 5000000 🍇
    🍦 a 🔷📃🆕 🔷🍔🆕 🍪🔤Double Bacon🔤 🔡 i 10🍪 🍨 🔤Bacon🔤 🔤Tomato🔤 🍆 ⚡️  🔷🍾🆕 0.3 🍪🔤barbecue🔤 🔡 i 10🍪 12
    🍦 b 🔷📃🆕 🔷🍔🆕 🍪🔤Triple Burger🔤 🔡 i 10🍪  🍨 🔤Onion🔤 🔤Salad🔤 🔤Tomato🔤 🍆 🔤Coke🔤 🔷🍾🆕 1.0 🍪🔤chilli🔤 🔡 i 10🍪 20
    🍦 c 🔷📃🆕 🔷🍔🆕 🍪🔤Cheeseburger🔤 🔡 i 10🍪  🍨 🔤Cheese🔤 🍆 🔤Lemonade🔤 ⚡️
    🍦 d 🔷📃🆕 🔷🍔🆕 🍪🔤Standard Burger🔤 🔡 i 10🍪  🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆 🔤Coke🔤 ⚡️
    🍊 😛 🚮 i 200000 0 🍇
      🐻 orders a
    🍉
    🍊 😛 🚮 i 300000 0 🍇
      🐻 orders b
    🍉
    🍊 😛 🚮 i 700000 0 🍇
      🐻 orders c
    🍉
    🍊 😛 🚮 i 500000 0 🍇
      🐻 orders d
    🍉
  🍉

  🔂 o orders 🍇
    😀 o
  🍉
🍉
_END_

# tests/compilation/classInheritance.emojic
#
ok $e.parse( q:to[_END_] );
🐇 🐟 🍇
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
_END_

# tests/compilation/protocolGenericLayerClass.emojic
#
ok $e.parse( q:to[_END_] );
🐊 📠🐚A⚪️ 🍇
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
    😀 🍪 🔤Requested 🔤 🔡 roomNumber 10 🍪
  🍉

  🐖 🚚 ➡️ 🚂 🍇
    🍎 153
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

  ⏱ a 311
  😀🔡 🚚 a 10

  🍰 b 📠🐚🍔
  🍮 b 🔷🏣🆕

  ⏱ b 🔷🍔🆕 🔤Standard Burger🔤 🍨 🔤Egg🔤 🔤Salad🔤 🔤Bacon🔤 🔤Cucumber🔤 🍆
  😀 🚚 b
🍉
_END_

done-testing;
