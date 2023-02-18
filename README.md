# Classes, Structs and Enums - in a Swift Playground 🛝

[Download](https://github.com/MatthewpHarding/FREE-PLAYGROUND-swiftui/archive/refs/heads/main.zip) this Swift playground file to run the example given in [Xcode](https://developer.apple.com/xcode).

## This Playground Teaches 👨🏻‍🏫
When to make the choice to use either a class, struct or enum. 

Sometimes it's difficult to know when to use certain types. Enums, structs and classes are very different but also quite similar too.


This Swift playground is a workspace to test out some of the differences of these types. The online bonus video provides tips directly from an iOS proffessional - don't forget to watch it!

💡 Tip: As a general rule, enums represent state, structs represent data and classes manage the system.

The general code of the Swift playground looks something like this:

```Swift
// MARK: - 📦 Sourcecode
enum PlaybackState {
    case idle
    case paused
    case playing
    case finished
}

struct Episode {
    let title: String
    let duration: Double
}

struct Program {
    let title: String
    let episodes: [Episode]
}

class VideoPlayer {
    private(set) var currentProgram: Program?
    private(set) var currentEpisode: Episode?
    private(set) var currentPlaybackState: PlaybackState
    
    init() {
        currentProgram = nil
        currentEpisode = nil
        currentPlaybackState = .idle
    }
    
    func play(program: Program, episode: Episode) {
        currentProgram = program
        currentEpisode = episode
        currentPlaybackState = .playing
    }
    
    func pause() {
        guard let _ = currentEpisode else {
            return
        }
        currentPlaybackState = .paused
    }
    
    func resume() {
        guard let _ = currentEpisode else {
            return
        }
        currentPlaybackState = .playing
    }
}

let episodes = [Episode(title: "The One with the Pig", duration: 35.00 * 60.00), Episode(title: "The One with the Spaceship", duration: 20.00 * 60.00), Episode(title: "The One with the Grilled Cheese", duration: 25.00 * 60.00)]
let friends = Program(title: "F.r.i.e.n.d.s.", episodes: episodes)

let videoPlayer = VideoPlayer()
videoPlayer.play(program: friends, episode: friends.episodes[0])
print(videoPlayer.currentEpisode?.title ?? "")
// << 🔵 Run Point
```

## How To Download ⬇️
You can download this Swift playground by clicking the `Code` button at the top of this page. 

## How To Run 🏃🏾‍♂️
Swift playground files run within [Xcode](https://developer.apple.com/xcode) *(the tool used by developers to build apps)* and you simply need to double click the file.

## Why Learn In A Playground 🛝
Swift playgrounds allow for rapid developmemt and provide a very fast and fluid thought-to-code process. There is no time taken to compile, build or install an app to an iOS simulator. Instead, the compilation time is fast and results are viewed almost immediately. 

The term "playground" is a very fitting name for both the feature and the file extension itself. It may be safe to assume that this feature was designed for "playing around"... or "learning" as we like to call it. 😆

## Thanks for reading 📖
👨🏼‍💻
@[MatthewpHarding](https://github.com/MatthewpHarding)

*written for the `Swift Simplified` learning community*

```Swift
let myLife = [learning, coding, happiness] 
```
### 🧕🏻👨🏿‍💼👩🏼‍💼👩🏻‍💻👨🏼‍💼🧛🏻‍♀️👩🏼‍💻💁🏽‍♂️🕵🏻‍♂️🧝🏼‍♀️🦹🏼‍♀🧕🏾🧟‍♂️
