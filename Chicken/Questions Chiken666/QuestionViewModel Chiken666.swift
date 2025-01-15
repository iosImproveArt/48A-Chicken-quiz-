//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelChiken666: ObservableObject {
    let typeOfGame: GameTypeChiken666
    
    var vwrfv = "wfvrwv"
    var wrfvwr = 2452
    func vwrfvw() -> String {
        return "wrfvwrfvw"
    }
    func wrfvwrfvwrfvw() {
        print("wvrfvwrf")
    }
    
    
    func cwrcfrc() -> Double {
        print(245245 / 2452452)
        return 245245245 * 2452452
    }
    var qecefcqef = [245245245.245245245: "wrfvwrfvrw"]
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionChiken666]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionChiken666 {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeChiken666) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionChiken666.advancedQuestions.shuffled().prefix(21))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 {
                player2RightAnswers += 1
            } else {
                player1RightAnswers += 1
            }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 || (typeOfGame == .withC && questionNumber >= 19) {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1].randomElement()!
                } else {
                    questionNumber += 1
                }
            }
        }
    }
}


enum GameTypeChiken666 {
    case oneP
    case withC
    case withF
}

struct QuestionChiken666 {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    static let advancedQuestions: [QuestionChiken666] = [
        QuestionChiken666(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Earth", "Mars"]
        ),
        QuestionChiken666(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Charles Dickens", "Mark Twain", "Jane Austen"]
        ),
        QuestionChiken666(
            question: "What is the chemical symbol for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "O2", "CO2", "NaCl"]
        ),
        QuestionChiken666(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["Japan", "China", "South Korea", "Thailand"]
        ),
        QuestionChiken666(
            question: "What is the speed of light in a vacuum?",
            correctAnswer: "299,792,458 m/s",
            answerOptions: ["299,792,458 m/s", "150,000,000 m/s", "3,000,000 m/s", "300,000 m/s"]
        ),
        QuestionChiken666(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Helium", "Oxygen", "Carbon"]
        ),
        QuestionChiken666(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Leonardo da Vinci", "Vincent van Gogh", "Pablo Picasso", "Claude Monet"]
        ),
        QuestionChiken666(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Paris", "London", "Berlin", "Rome"]
        ),
        QuestionChiken666(
            question: "How many continents are there on Earth?",
            correctAnswer: "7",
            answerOptions: ["7", "6", "5", "8"]
        ),
        QuestionChiken666(
            question: "What is the smallest prime number?",
            correctAnswer: "2",
            answerOptions: ["2", "1", "3", "0"]
        ),
        QuestionChiken666(
            question: "What is the capital city of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Canberra", "Sydney", "Melbourne", "Brisbane"]
        ),
        QuestionChiken666(
            question: "Which organ is responsible for pumping blood throughout the human body?",
            correctAnswer: "Heart",
            answerOptions: ["Heart", "Lungs", "Liver", "Kidney"]
        ),
        QuestionChiken666(
            question: "What is the boiling point of water at sea level?",
            correctAnswer: "100°C",
            answerOptions: ["100°C", "90°C", "120°C", "80°C"]
        ),
        QuestionChiken666(
            question: "Who is the author of 'Pride and Prejudice'?",
            correctAnswer: "Jane Austen",
            answerOptions: ["Jane Austen", "Charlotte Brontë", "Emily Dickinson", "Virginia Woolf"]
        ),
        QuestionChiken666(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Everest", "K2", "Kangchenjunga", "Lhotse"]
        ),
        QuestionChiken666(
            question: "In which year did the Titanic sink?",
            correctAnswer: "1912",
            answerOptions: ["1912", "1905", "1920", "1898"]
        ),
        QuestionChiken666(
            question: "What is the primary gas found in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Hydrogen"]
        ),
        QuestionChiken666(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Jupiter", "Mercury"]
        ),
        QuestionChiken666(
            question: "What is the square root of 144?",
            correctAnswer: "12",
            answerOptions: ["12", "14", "16", "10"]
        ),
        QuestionChiken666(
            question: "Who discovered penicillin?",
            correctAnswer: "Alexander Fleming",
            answerOptions: ["Alexander Fleming", "Marie Curie", "Isaac Newton", "Louis Pasteur"]
        ),
        QuestionChiken666(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionChiken666(
            question: "Which country invented paper?",
            correctAnswer: "China",
            answerOptions: ["China", "Egypt", "India", "Greece"]
        ),
        QuestionChiken666(
            question: "Who painted 'The Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Vincent van Gogh", "Claude Monet", "Leonardo da Vinci", "Pablo Picasso"]
        ),
        QuestionChiken666(
            question: "What is the capital city of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Ottawa", "Toronto", "Vancouver", "Montreal"]
        ),
        QuestionChiken666(
            question: "Which metal is the best conductor of electricity?",
            correctAnswer: "Silver",
            answerOptions: ["Silver", "Copper", "Gold", "Aluminum"]
        ),
        QuestionChiken666(
            question: "How many bones are there in the human body?",
            correctAnswer: "206",
            answerOptions: ["206", "200", "210", "180"]
        ),
        QuestionChiken666(
            question: "What is the currency of the United Kingdom?",
            correctAnswer: "Pound Sterling",
            answerOptions: ["Pound Sterling", "Euro", "Dollar", "Yen"]
        ),
        QuestionChiken666(
            question: "What is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Cheetah", "Lion", "Leopard", "Horse"]
        ),
        QuestionChiken666(
            question: "Which city is known as the Big Apple?",
            correctAnswer: "New York City",
            answerOptions: ["New York City", "Los Angeles", "Chicago", "Miami"]
        ),
        QuestionChiken666(
            question: "Who was the first President of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["George Washington", "Abraham Lincoln", "Thomas Jefferson", "John Adams"]
        ),
        QuestionChiken666(
            question: "What is the heaviest naturally occurring element?",
            correctAnswer: "Uranium",
            answerOptions: ["Uranium", "Gold", "Platinum", "Lead"]
        ),
        QuestionChiken666(
            question: "What is the official language of Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Portuguese", "Spanish", "French", "English"]
        ),
        QuestionChiken666(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Graphite", "Gold", "Steel"]
        ),
        QuestionChiken666(
            question: "Who is known as the father of modern physics?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Niels Bohr", "Galileo Galilei"]
        ),
        QuestionChiken666(
            question: "What is the smallest country in the world by area?",
            correctAnswer: "Vatican City",
            answerOptions: ["Vatican City", "Monaco", "San Marino", "Liechtenstein"]
        ),
        QuestionChiken666(
            question: "Which blood type is considered the universal donor?",
            correctAnswer: "O negative",
            answerOptions: ["O negative", "O positive", "A negative", "B negative"]
        ),
        QuestionChiken666(
            question: "Who developed the theory of general relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Nikola Tesla"]
        ),
        QuestionChiken666(
            question: "What is the capital city of Egypt?",
            correctAnswer: "Cairo",
            answerOptions: ["Cairo", "Alexandria", "Giza", "Luxor"]
        ),
        QuestionChiken666(
            question: "How many legs does a spider have?",
            correctAnswer: "8",
            answerOptions: ["8", "6", "10", "12"]
        ),
        QuestionChiken666(
            question: "What is the process by which plants make their food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Digestion", "Fermentation"]
        ),
        QuestionChiken666(
            question: "Which element is commonly known as the building block of life?",
            correctAnswer: "Carbon",
            answerOptions: ["Carbon", "Hydrogen", "Oxygen", "Nitrogen"]
        ),
        QuestionChiken666(
            question: "What year did World War II end?",
            correctAnswer: "1945",
            answerOptions: ["1945", "1942", "1939", "1950"]
        ),
        QuestionChiken666(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Arctic", "Kalahari"]
        ),
        QuestionChiken666(
            question: "Who invented the light bulb?",
            correctAnswer: "Thomas Edison",
            answerOptions: ["Thomas Edison", "Nikola Tesla", "Alexander Graham Bell", "James Watt"]
        ),
        QuestionChiken666(
            question: "What is the capital city of India?",
            correctAnswer: "New Delhi",
            answerOptions: ["New Delhi", "Mumbai", "Kolkata", "Chennai"]
        ),
        QuestionChiken666(
            question: "Which is the longest river in the world?",
            correctAnswer: "Nile River",
            answerOptions: ["Nile River", "Amazon River", "Yangtze River", "Mississippi River"]
        ),
        QuestionChiken666(
            question: "What is the main ingredient in sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Rice", "Fish", "Seaweed", "Vegetables"]
        ),
        QuestionChiken666(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Saturn", "Jupiter", "Uranus", "Neptune"]
        ),
        QuestionChiken666(
            question: "Who is known as the 'Father of Computers'?",
            correctAnswer: "Charles Babbage",
            answerOptions: ["Charles Babbage", "Alan Turing", "John von Neumann", "Ada Lovelace"]
        ),
        QuestionChiken666(
            question: "Which continent is the largest by area?",
            correctAnswer: "Asia",
            answerOptions: ["Asia", "Africa", "North America", "Europe"]
        ),
        QuestionChiken666(
            question: "What is the national animal of Canada?",
            correctAnswer: "Beaver",
            answerOptions: ["Beaver", "Moose", "Polar Bear", "Caribou"]
        ),
        QuestionChiken666(
            question: "How many strings does a standard guitar have?",
            correctAnswer: "6",
            answerOptions: ["6", "4", "8", "7"]
        ),
        QuestionChiken666(
            question: "What is the most abundant gas in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]
        ),
        QuestionChiken666(
            question: "What is the name of the first man to step on the moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin", "Michael Collins"]
        ),
        QuestionChiken666(
            question: "Which country hosted the first modern Olympic Games?",
            correctAnswer: "Greece",
            answerOptions: ["Greece", "France", "United States", "Italy"]
        ),
        QuestionChiken666(
            question: "What is the name of the largest rainforest in the world?",
            correctAnswer: "Amazon Rainforest",
            answerOptions: ["Amazon Rainforest", "Congo Rainforest", "Daintree Rainforest", "Sundarbans"]
        ),
        QuestionChiken666(
            question: "How many teeth does an adult human typically have?",
            correctAnswer: "32",
            answerOptions: ["32", "30", "28", "34"]
        ),
        QuestionChiken666(
            question: "Which instrument is used to measure atmospheric pressure?",
            correctAnswer: "Barometer",
            answerOptions: ["Barometer", "Thermometer", "Hygrometer", "Anemometer"]
        ),
        QuestionChiken666(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Au", "Ag", "Pb", "Fe"]
        ),
        QuestionChiken666(
            question: "Who wrote 'Hamlet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Charles Dickens", "Jane Austen", "Mark Twain"]
        ),
        QuestionChiken666(
            question: "What is the tallest building in the world as of 2025?",
            correctAnswer: "Burj Khalifa",
            answerOptions: ["Burj Khalifa", "Shanghai Tower", "Abraj Al-Bait", "Taipei 101"]
        ),
        QuestionChiken666(
            question: "Which planet is closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Venus", "Earth", "Mars"]
        ),
        QuestionChiken666(
            question: "What is the square of 15?",
            correctAnswer: "225",
            answerOptions: ["225", "210", "200", "240"]
        ),
        QuestionChiken666(
            question: "Which is the smallest unit of life?",
            correctAnswer: "Cell",
            answerOptions: ["Cell", "Atom", "Molecule", "Tissue"]
        ),
        QuestionChiken666(
            question: "In what year did the Berlin Wall fall?",
            correctAnswer: "1989",
            answerOptions: ["1989", "1990", "1987", "1985"]
        ),
        QuestionChiken666(
            question: "What is the main ingredient in hummus?",
            correctAnswer: "Chickpeas",
            answerOptions: ["Chickpeas", "Lentils", "Soybeans", "Peas"]
        ),
        QuestionChiken666(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["Japan", "China", "South Korea", "Thailand"]
        ),
        QuestionChiken666(
            question: "How many continents are there on Earth?",
            correctAnswer: "7",
            answerOptions: ["7", "6", "8", "5"]
        ),
        QuestionChiken666(
            question: "What is the freezing point of water in Fahrenheit?",
            correctAnswer: "32°F",
            answerOptions: ["32°F", "0°F", "40°F", "100°F"]
        ),
        QuestionChiken666(
            question: "What is the largest mammal in the world?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Blue Whale", "Elephant", "Hippopotamus", "Giraffe"]
        ),
        QuestionChiken666(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Leonardo da Vinci", "Michelangelo", "Raphael", "Donatello"]
        ),
        QuestionChiken666(
            question: "What is the chemical formula for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "O2", "CO2", "H2"]
        ),
        QuestionChiken666(
            question: "What year did the first manned moon landing occur?",
            correctAnswer: "1969",
            answerOptions: ["1969", "1971", "1967", "1973"]
        ),
        QuestionChiken666(
            question: "What is the largest planet in the Solar System?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Neptune", "Earth"]
        ),
        QuestionChiken666(
            question: "Which country is famous for the Eiffel Tower?",
            correctAnswer: "France",
            answerOptions: ["France", "Italy", "Germany", "Spain"]
        ),
        QuestionChiken666(
            question: "What is the basic unit of currency in Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yen", "Won", "Dollar", "Euro"]
        ),
        QuestionChiken666(
            question: "Which instrument is used to measure time?",
            correctAnswer: "Clock",
            answerOptions: ["Clock", "Barometer", "Thermometer", "Hygrometer"]
        ),
        QuestionChiken666(
            question: "What is the hardest natural material on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Gold", "Steel", "Platinum"]
        ),
        QuestionChiken666(
            question: "How many planets are in the Solar System?",
            correctAnswer: "8",
            answerOptions: ["8", "9", "7", "10"]
        ),
        QuestionChiken666(
            question: "What is the capital city of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Rome", "Venice", "Milan", "Naples"]
        ),
        QuestionChiken666(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Gold", "Iron"]
        ),
        QuestionChiken666(
            question: "What is the fastest bird in the world?",
            correctAnswer: "Peregrine Falcon",
            answerOptions: ["Peregrine Falcon", "Eagle", "Hawk", "Albatross"]
        ),
        QuestionChiken666(
            question: "Who is known as the 'Father of Medicine'?",
            correctAnswer: "Hippocrates",
            answerOptions: ["Hippocrates", "Galen", "Aristotle", "Plato"]
        ),
        QuestionChiken666(
            question: "What is the primary language spoken in Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Portuguese", "Spanish", "English", "French"]
        ),
        QuestionChiken666(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Gold", "Silver", "Copper"]
        ),
        QuestionChiken666(
            question: "What is the term for animals that only eat plants?",
            correctAnswer: "Herbivores",
            answerOptions: ["Herbivores", "Carnivores", "Omnivores", "Insectivores"]
        ),
        QuestionChiken666(
            question: "Which mountain is the tallest in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Everest", "K2", "Kangchenjunga", "Lhotse"]
        ),
        QuestionChiken666(
            question: "Which organ in the human body is responsible for pumping blood?",
            correctAnswer: "Heart",
            answerOptions: ["Heart", "Lungs", "Kidneys", "Liver"]
        ),
        QuestionChiken666(
            question: "What is the name of the ship that sank on its maiden voyage in 1912?",
            correctAnswer: "Titanic",
            answerOptions: ["Titanic", "Lusitania", "Britannic", "Olympic"]
        ),
        QuestionChiken666(
            question: "Which U.S. state is known as the Sunshine State?",
            correctAnswer: "Florida",
            answerOptions: ["Florida", "California", "Texas", "Hawaii"]
        ),
        QuestionChiken666(
            question: "What is the boiling point of water in Celsius?",
            correctAnswer: "100°C",
            answerOptions: ["100°C", "90°C", "80°C", "110°C"]
        ),
        QuestionChiken666(
            question: "Which galaxy is Earth located in?",
            correctAnswer: "Milky Way",
            answerOptions: ["Milky Way", "Andromeda", "Triangulum", "Whirlpool"]
        ),
        QuestionChiken666(
            question: "Who was the first President of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["George Washington", "Thomas Jefferson", "Abraham Lincoln", "John Adams"]
        ),
        QuestionChiken666(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionChiken666(
            question: "What is the main component of Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]
        ),
        QuestionChiken666(
            question: "Who painted 'Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Vincent van Gogh", "Claude Monet", "Pablo Picasso", "Leonardo da Vinci"]
        ),
        QuestionChiken666(
            question: "What is the largest land animal?",
            correctAnswer: "African Elephant",
            answerOptions: ["African Elephant", "Blue Whale", "Hippopotamus", "Giraffe"]
        ),
        QuestionChiken666(
            question: "What is the term for a word that has the opposite meaning of another word?",
            correctAnswer: "Antonym",
            answerOptions: ["Antonym", "Synonym", "Homonym", "Acronym"]
        ),
        QuestionChiken666(
            question: "Which vitamin is produced by the body when exposed to sunlight?",
            correctAnswer: "Vitamin D",
            answerOptions: ["Vitamin D", "Vitamin C", "Vitamin B12", "Vitamin A"]
        ),
        QuestionChiken666(
            question: "What is the chemical symbol for sodium?",
            correctAnswer: "Na",
            answerOptions: ["Na", "S", "N", "K"]
        ),
        QuestionChiken666(
            question: "Who is the author of '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["George Orwell", "Aldous Huxley", "Ray Bradbury", "J.R.R. Tolkien"]
        ),
        QuestionChiken666(
            question: "What is the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Greenland", "Australia", "New Guinea", "Borneo"]
        ),
        QuestionChiken666(
            question: "What is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Cheetah", "Lion", "Horse", "Greyhound"]
        ),
        QuestionChiken666(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Helium", "Oxygen", "Carbon"]
        ),
        QuestionChiken666(
            question: "What is the capital city of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Ottawa", "Toronto", "Montreal", "Vancouver"]
        ),
        QuestionChiken666(
            question: "Who is known as the 'King of Pop'?",
            correctAnswer: "Michael Jackson",
            answerOptions: ["Michael Jackson", "Elvis Presley", "Freddie Mercury", "Prince"]
        ),
        QuestionChiken666(
            question: "What is the term for molten rock beneath the Earth's surface?",
            correctAnswer: "Magma",
            answerOptions: ["Magma", "Lava", "Basalt", "Ash"]
        ),
        QuestionChiken666(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Avocado", "Tomato", "Cucumber", "Lime"]
        ),
        QuestionChiken666(
            question: "Which Shakespeare play features the characters Romeo and Juliet?",
            correctAnswer: "Romeo and Juliet",
            answerOptions: ["Romeo and Juliet", "Hamlet", "Macbeth", "Othello"]
        ),
        QuestionChiken666(
            question: "What is the largest type of bear?",
            correctAnswer: "Polar Bear",
            answerOptions: ["Polar Bear", "Grizzly Bear", "Black Bear", "Panda Bear"]
        ),
        QuestionChiken666(
            question: "Which country is home to the kangaroo?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "New Zealand", "South Africa", "Brazil"]
        ),
        QuestionChiken666(
            question: "What is the smallest prime number?",
            correctAnswer: "2",
            answerOptions: ["2", "1", "3", "5"]
        ),
        QuestionChiken666(
            question: "Which scientist proposed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Nikola Tesla", "Galileo Galilei"]
        ),
        QuestionChiken666(
            question: "What is the name of the process plants use to make food using sunlight?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Osmosis", "Transpiration"]
        ),
        QuestionChiken666(
            question: "Which is the only mammal capable of true flight?",
            correctAnswer: "Bat",
            answerOptions: ["Bat", "Flying Squirrel", "Eagle", "Pigeon"]
        ),
        QuestionChiken666(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Atacama"]
        ),
        QuestionChiken666(
            question: "Who wrote the novel 'Pride and Prejudice'?",
            correctAnswer: "Jane Austen",
            answerOptions: ["Jane Austen", "Emily Brontë", "Charlotte Brontë", "Mary Shelley"]
        ),
        QuestionChiken666(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"]
        ),
        QuestionChiken666(
            question: "What is the hardest naturally occurring mineral?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Quartz", "Topaz", "Ruby"]
        ),
        QuestionChiken666(
            question: "What is the capital city of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Canberra", "Sydney", "Melbourne", "Brisbane"]
        ),
        QuestionChiken666(
            question: "What is the term for a baby frog?",
            correctAnswer: "Tadpole",
            answerOptions: ["Tadpole", "Pollywog", "Froglet", "Spawn"]
        ),
        QuestionChiken666(
            question: "Which famous ship was commanded by Christopher Columbus during his voyage to the Americas?",
            correctAnswer: "Santa Maria",
            answerOptions: ["Santa Maria", "Mayflower", "Endeavour", "Victoria"]
        ),
        QuestionChiken666(
            question: "What is the main gas found in the air we breathe?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]
        ),
        QuestionChiken666(
            question: "Who is the author of 'The Catcher in the Rye'?",
            correctAnswer: "J.D. Salinger",
            answerOptions: ["J.D. Salinger", "F. Scott Fitzgerald", "Ernest Hemingway", "John Steinbeck"]
        ),
        QuestionChiken666(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Stapes", "Femur", "Ulna", "Radius"]
        ),
        QuestionChiken666(
            question: "Which sea creature has three hearts?",
            correctAnswer: "Octopus",
            answerOptions: ["Octopus", "Shark", "Dolphin", "Jellyfish"]
        ),
        QuestionChiken666(
            question: "What is the name of the fairy in 'Peter Pan'?",
            correctAnswer: "Tinker Bell",
            answerOptions: ["Tinker Bell", "Wendy", "Fairy Godmother", "Pixie"]
        ),
        QuestionChiken666(
            question: "Which ancient wonder of the world is located in Egypt?",
            correctAnswer: "Great Pyramid of Giza",
            answerOptions: ["Great Pyramid of Giza", "Hanging Gardens of Babylon", "Colossus of Rhodes", "Temple of Artemis"]
        ),
        QuestionChiken666(
            question: "What is the SI unit of force?",
            correctAnswer: "Newton",
            answerOptions: ["Newton", "Joule", "Watt", "Pascal"]
        ),
        QuestionChiken666(
            question: "Which country has the longest coastline in the world?",
            correctAnswer: "Canada",
            answerOptions: ["Canada", "Australia", "Russia", "United States"]
        ),
        QuestionChiken666(
            question: "Which Italian city is famous for its canals?",
            correctAnswer: "Venice",
            answerOptions: ["Venice", "Florence", "Rome", "Milan"]
        ),
        QuestionChiken666(
            question: "Who developed the theory of evolution by natural selection?",
            correctAnswer: "Charles Darwin",
            answerOptions: ["Charles Darwin", "Gregor Mendel", "Jean-Baptiste Lamarck", "Alfred Wallace"]
        ),
        QuestionChiken666(
            question: "What is the largest internal organ in the human body?",
            correctAnswer: "Liver",
            answerOptions: ["Liver", "Lungs", "Heart", "Kidneys"]
        ),
        QuestionChiken666(
            question: "Which gas is essential for human respiration?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"]
        ),
        QuestionChiken666(
            question: "What is the speed of light in a vacuum?",
            correctAnswer: "299,792 km/s",
            answerOptions: ["299,792 km/s", "150,000 km/s", "1,080,000 km/h", "300,000 m/s"]
        ),
        QuestionChiken666(
            question: "Who is the Greek god of the sea?",
            correctAnswer: "Poseidon",
            answerOptions: ["Poseidon", "Zeus", "Hades", "Apollo"]
        ),
        QuestionChiken666(
            question: "What is the term for a group of lions?",
            correctAnswer: "Pride",
            answerOptions: ["Pride", "Pack", "Flock", "Herd"]
        ),
        QuestionChiken666(
            question: "Which vitamin is also known as ascorbic acid?",
            correctAnswer: "Vitamin C",
            answerOptions: ["Vitamin C", "Vitamin D", "Vitamin B12", "Vitamin A"]
        )
    ]
}
