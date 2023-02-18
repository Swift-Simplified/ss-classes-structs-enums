/*: ![Swift](matt-harding-logo.png)
 
 */
//: # Swift Simplified
//: ## A Free Playground
//: ## Demonstrating: Classes, Structs and Enums
//: ![instructor](instructor.png) [*with Matthew Harding*](https://www.udemy.com/user/iosbfree/)
//:
//: Swift v5.7 | 🚀 *Simplified for fast learning*
//:
//: -------------------
//: ## Welcome 👋🏿👋🏻👋🏽
//: Welcome to a small playground demonstrating classes, Structs and Enums.
//:
//: Execute the run points 🔵 below.
//:
//: Edit and experiment with the code!
//:
//: Don't stop writing code until you can see why things work the way they do.
//-----code-play-area


// #practice #practice #practice



//-----code-play-area
//:
//: -------------------
//: ## When To Use What? 🤷🏼‍♂️
//: Sometimes it's difficult to know when to use certain types. Enums, structs and classes are very different but also quite similar too.
//:
//: This Swift playground is a workspace to test out some of the differences of these types. The online bonus video provides tips directly from an iOS proffessional - don't forget to watch it!
//:
//: 💡 Tip: As a general rule, enums represent state, structs represent data and classes manage the system.
//:
//: ## Workspace
//: Let's pretend to create a video player and write some basic logic to binge watch a tv series.
//:
//: 👉 First, let's create an enum to store the state of the video player.
// MARK: - 📦 Sourcecode
enum PlaybackState {
    case idle
    case paused
    case playing
    case finished
}
//: 👉 Let's use two structs to represent the data for our tv series.
struct Episode {
    let title: String
    let duration: Double
}

struct Program {
    let title: String
    let episodes: [Episode]
}
//: 👉 Let's use a class to create a video player which will manage our state and use the tv series program data.
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
//: Now that we have declared our types we can use this workspace to test out a few differences of each. First let's write some code to setup an environment for us to work with.
let episodes = [Episode(title: "The One with the Pig", duration: 35.00 * 60.00), Episode(title: "The One with the Spaceship", duration: 20.00 * 60.00), Episode(title: "The One with the Grilled Cheese", duration: 25.00 * 60.00)]
let friends = Program(title: "F.r.i.e.n.d.s.", episodes: episodes)

let videoPlayer = VideoPlayer()
videoPlayer.play(program: friends, episode: friends.episodes[0])
print(videoPlayer.currentEpisode?.title ?? "")
// << 🔵 Run Point

let videoPlayer2 = videoPlayer
videoPlayer2.play(program: friends, episode: friends.episodes[1])
print(videoPlayer.currentEpisode?.title ?? "")
// << 🔵 Run Point

//-----code-play-area






//-----code-play-area
//:
//: -------------------
//: 🤩 **Congratulations** 🎉
//:
//: You learned something new - hopefully. 🤞
//:
//: Use this playground to play about and edit the code - have some fun! It's a great opportunity to practice something new. 👏🏼👏🏾👏
//:
//: -------------------
//: ## Created by [SwiftSimplified.com](https://www.swiftsimplified.com)
//: [SwiftSimplified.com](https://www.swiftsimplified.com)
//:
//: This playground is intended as extra resource for students taking our Swift Simplified online course - or for anyone else learning Swift.
//:
//: ![instructor](instructor.png) Created by [Matthew Harding](https://github.com/MatthewpHarding) | [GitHub](https://github.com/MatthewpHarding)| [Website](https://www.swiftsimplified.com) | [Our Courses](https://www.udemy.com/user/iosbfree/)
//:
//: 🤩 *..let's live a better life, by learning Swift* 🛠
//:
//: ### 🧕🏻🙋🏽‍♂️👨🏿‍💼👩🏼‍💼👩🏻‍💻💁🏼‍♀️👨🏼‍💼🙋🏻‍♂️🙋🏻‍♀️👩🏼‍💻🙋🏿💁🏽‍♂️🙋🏽‍♀️🙋🏿‍♀️🧕🏾🙋🏼‍♂️
