//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewChiken666: View {
    @State var selectedQuestion: Tab4QuestionChiken666 = Tab4QuestionChiken666.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: isSE ? 20: 22, weight: .medium, color: .black)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSE ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint2 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSE ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionChiken666.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewChiken666(showLoading: false, selectedTab: .questions)
}

struct Tab4QuestionChiken666 {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4QuestionChiken666] = [
        Tab4QuestionChiken666(
            question: "What is the tallest mountain in the world?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its name starts with 'E'.",
            answer: "Everest"
        ),
        Tab4QuestionChiken666(
            question: "Which planet is known as the 'Blue Planet'?",
            hint1: "It is the third planet from the Sun.",
            hint2: "It is where we live.",
            answer: "Earth"
        ),
        Tab4QuestionChiken666(
            question: "What is the primary language spoken in Brazil?",
            hint1: "It is not Spanish.",
            hint2: "Its name starts with 'P'.",
            answer: "Portuguese"
        ),
        Tab4QuestionChiken666(
            question: "What is the chemical symbol for water?",
            hint1: "It is made of two hydrogen atoms and one oxygen atom.",
            hint2: "It is represented by two letters.",
            answer: "H2O"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest ocean on Earth?",
            hint1: "It covers about 30% of the Earth's surface.",
            hint2: "Its name starts with 'P'.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionChiken666(
            question: "Which country is known as the Land of the Rising Sun?",
            hint1: "It is an island nation in Asia.",
            hint2: "Its name starts with 'J'.",
            answer: "Japan"
        ),
        Tab4QuestionChiken666(
            question: "What is the name of the process by which plants make their food?",
            hint1: "It requires sunlight and chlorophyll.",
            hint2: "Its name starts with 'P'.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionChiken666(
            question: "What is the name of the largest mammal in the world?",
            hint1: "It lives in the ocean.",
            hint2: "Its name starts with 'B'.",
            answer: "Blue Whale"
        ),
        Tab4QuestionChiken666(
            question: "Which element has the chemical symbol 'O'?",
            hint1: "It is essential for breathing.",
            hint2: "Its name starts with 'O'.",
            answer: "Oxygen"
        ),
        Tab4QuestionChiken666(
            question: "What is the smallest country in the world?",
            hint1: "It is located in Rome, Italy.",
            hint2: "Its name starts with 'V'.",
            answer: "Vatican City"
        ),
        Tab4QuestionChiken666(
            question: "What is the currency of the United Kingdom?",
            hint1: "It is also known as 'pound sterling'.",
            hint2: "Its name starts with 'P'.",
            answer: "Pound"
        ),
        Tab4QuestionChiken666(
            question: "Who painted the Mona Lisa?",
            hint1: "He was an Italian artist from the Renaissance.",
            hint2: "His name starts with 'L'.",
            answer: "Leonardo da Vinci"
        ),
        Tab4QuestionChiken666(
            question: "What is the hardest natural substance on Earth?",
            hint1: "It is often used in jewelry.",
            hint2: "Its name starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionChiken666(
            question: "Which planet is closest to the Sun?",
            hint1: "It is also the smallest planet in the solar system.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionChiken666(
            question: "What is the name of the largest rainforest in the world?",
            hint1: "It is located in South America.",
            hint2: "Its name starts with 'A'.",
            answer: "Amazon Rainforest"
        ),
        Tab4QuestionChiken666(
            question: "Which metal is used to make coins and has the chemical symbol 'Ag'?",
            hint1: "It is often associated with jewelry.",
            hint2: "Its name starts with 'S'.",
            answer: "Silver"
        ),
        Tab4QuestionChiken666(
            question: "What is the main ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answer: "Avocado"
        ),
        Tab4QuestionChiken666(
            question: "What is the name of the star at the center of our solar system?",
            hint1: "It provides light and heat to Earth.",
            hint2: "Its name starts with 'S'.",
            answer: "Sun"
        ),
        Tab4QuestionChiken666(
            question: "What is the term for animals that eat only plants?",
            hint1: "It starts with 'H'.",
            hint2: "It is the opposite of 'carnivore'.",
            answer: "Herbivore"
        ),
        Tab4QuestionChiken666(
            question: "Which country has the Eiffel Tower?",
            hint1: "It is located in Europe.",
            hint2: "Its name starts with 'F'.",
            answer: "France"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest planet in our solar system?",
            hint1: "It is known for its Great Red Spot.",
            hint2: "Its name starts with 'J'.",
            answer: "Jupiter"
        ),
        Tab4QuestionChiken666(
            question: "What is the chemical symbol for gold?",
            hint1: "It is a two-letter abbreviation.",
            hint2: "Its name starts with 'A'.",
            answer: "Au"
        ),
        Tab4QuestionChiken666(
            question: "Who wrote 'Romeo and Juliet'?",
            hint1: "He was an English playwright.",
            hint2: "His name starts with 'S'.",
            answer: "William Shakespeare"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital of Italy?",
            hint1: "It is home to the Colosseum.",
            hint2: "Its name starts with 'R'.",
            answer: "Rome"
        ),
        Tab4QuestionChiken666(
            question: "What is the boiling point of water in Celsius?",
            hint1: "It is a round number.",
            hint2: "It is 100 degrees.",
            answer: "100"
        ),
        Tab4QuestionChiken666(
            question: "Which element is represented by the symbol 'Fe'?",
            hint1: "It is commonly used in construction.",
            hint2: "Its name starts with 'I'.",
            answer: "Iron"
        ),
        Tab4QuestionChiken666(
            question: "What is the term for an animal that sleeps during the day and is active at night?",
            hint1: "It starts with 'N'.",
            hint2: "It is the opposite of 'diurnal'.",
            answer: "Nocturnal"
        ),
        Tab4QuestionChiken666(
            question: "Which continent is the Sahara Desert located on?",
            hint1: "It is the second-largest continent.",
            hint2: "Its name starts with 'A'.",
            answer: "Africa"
        ),
        Tab4QuestionChiken666(
            question: "Who was the first president of the United States?",
            hint1: "He is featured on the US $1 bill.",
            hint2: "His name starts with 'G'.",
            answer: "George Washington"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest internal organ in the human body?",
            hint1: "It is essential for detoxification.",
            hint2: "Its name starts with 'L'.",
            answer: "Liver"
        ),
        Tab4QuestionChiken666(
            question: "What is the square root of 64?",
            hint1: "It is a whole number.",
            hint2: "It is 8.",
            answer: "8"
        ),
        Tab4QuestionChiken666(
            question: "Which country is famous for its maple syrup?",
            hint1: "Its flag features a red maple leaf.",
            hint2: "Its name starts with 'C'.",
            answer: "Canada"
        ),
        Tab4QuestionChiken666(
            question: "What is the main ingredient in sushi?",
            hint1: "It is a type of grain.",
            hint2: "Its name starts with 'R'.",
            answer: "Rice"
        ),
        Tab4QuestionChiken666(
            question: "Which organ pumps blood throughout the human body?",
            hint1: "It is located in the chest.",
            hint2: "Its name starts with 'H'.",
            answer: "Heart"
        ),
        Tab4QuestionChiken666(
            question: "Which galaxy is Earth located in?",
            hint1: "It is named after a type of candy bar.",
            hint2: "Its name starts with 'M'.",
            answer: "Milky Way"
        ),
        Tab4QuestionChiken666(
            question: "What is the smallest unit of life?",
            hint1: "It is a fundamental building block of organisms.",
            hint2: "Its name starts with 'C'.",
            answer: "Cell"
        ),
        Tab4QuestionChiken666(
            question: "Which bird is often associated with delivering babies?",
            hint1: "It has long legs and a long beak.",
            hint2: "Its name starts with 'S'.",
            answer: "Stork"
        ),
        Tab4QuestionChiken666(
            question: "What is the main gas found in Earth's atmosphere?",
            hint1: "It makes up about 78% of the atmosphere.",
            hint2: "Its name starts with 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionChiken666(
            question: "Which instrument is used to measure temperature?",
            hint1: "It is commonly found in homes.",
            hint2: "Its name starts with 'T'.",
            answer: "Thermometer"
        ),
        Tab4QuestionChiken666(
            question: "What is the primary color of a ripe banana?",
            hint1: "It is a bright, warm color.",
            hint2: "Its name starts with 'Y'.",
            answer: "Yellow"
        ),
        Tab4QuestionChiken666(
            question: "What is the currency of Japan?",
            hint1: "It is used for transactions in Tokyo.",
            hint2: "Its name starts with 'Y'.",
            answer: "Yen"
        ),
        Tab4QuestionChiken666(
            question: "What is the term for water changing into vapor?",
            hint1: "It occurs when water is heated.",
            hint2: "Its name starts with 'E'.",
            answer: "Evaporation"
        ),
        Tab4QuestionChiken666(
            question: "Which metal is liquid at room temperature?",
            hint1: "It is often used in thermometers.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest island in the world?",
            hint1: "It is located between the Arctic and Atlantic oceans.",
            hint2: "Its name starts with 'G'.",
            answer: "Greenland"
        ),
        Tab4QuestionChiken666(
            question: "Which animal is known as the 'King of the Jungle'?",
            hint1: "It is a large cat.",
            hint2: "Its name starts with 'L'.",
            answer: "Lion"
        ),
        Tab4QuestionChiken666(
            question: "What do bees collect from flowers?",
            hint1: "It is used to make honey.",
            hint2: "Its name starts with 'N'.",
            answer: "Nectar"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital of Australia?",
            hint1: "It is not Sydney or Melbourne.",
            hint2: "Its name starts with 'C'.",
            answer: "Canberra"
        ),
        Tab4QuestionChiken666(
            question: "What is the primary ingredient in chocolate?",
            hint1: "It comes from a bean.",
            hint2: "Its name starts with 'C'.",
            answer: "Cocoa"
        ),
        Tab4QuestionChiken666(
            question: "What is the smallest prime number?",
            hint1: "It is an even number.",
            hint2: "It is 2.",
            answer: "2"
        ),
        Tab4QuestionChiken666(
            question: "What is the term for animals that give birth to live young?",
            hint1: "Humans are included in this group.",
            hint2: "Its name starts with 'M'.",
            answer: "Mammals"
        ),
        Tab4QuestionChiken666(
            question: "What is the term for a baby frog?",
            hint1: "It is aquatic and has a tail.",
            hint2: "Its name starts with 'T'.",
            answer: "Tadpole"
        ),
        Tab4QuestionChiken666(
            question: "What is the hardest rock?",
            hint1: "It is often used in cutting tools.",
            hint2: "Its name starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionChiken666(
            question: "What does a thermometer measure?",
            hint1: "It is related to heat.",
            hint2: "Its name starts with 'T'.",
            answer: "Temperature"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital city of Canada?",
            hint1: "It is not Toronto or Vancouver.",
            hint2: "Its name starts with 'O'.",
            answer: "Ottawa"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest bone in the human body?",
            hint1: "It is located in the leg.",
            hint2: "Its name starts with 'F'.",
            answer: "Femur"
        ),
        Tab4QuestionChiken666(
            question: "What is the name of the closest star to Earth?",
            hint1: "It provides light and warmth.",
            hint2: "Its name starts with 'S'.",
            answer: "Sun"
        ),
        Tab4QuestionChiken666(
            question: "What is the process by which plants make food?",
            hint1: "It involves sunlight and chlorophyll.",
            hint2: "Its name starts with 'P'.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionChiken666(
            question: "Which country is famous for the Eiffel Tower?",
            hint1: "It is located in Europe.",
            hint2: "Its name starts with 'F'.",
            answer: "France"
        ),
        Tab4QuestionChiken666(
            question: "What is the main component of the Sun?",
            hint1: "It is the lightest element.",
            hint2: "Its name starts with 'H'.",
            answer: "Hydrogen"
        ),
        Tab4QuestionChiken666(
            question: "Which bird is a universal symbol of peace?",
            hint1: "It is often depicted carrying an olive branch.",
            hint2: "Its name starts with 'D'.",
            answer: "Dove"
        ),
        Tab4QuestionChiken666(
            question: "What is the most common blood type in the world?",
            hint1: "It is the most universally accepted for blood transfusions.",
            hint2: "Its name starts with 'O'.",
            answer: "O positive"
        ),
        Tab4QuestionChiken666(
            question: "What is the chemical formula for water?",
            hint1: "It consists of two elements.",
            hint2: "Its name starts with 'H'.",
            answer: "H2O"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital of Egypt?",
            hint1: "It is home to the Great Pyramids.",
            hint2: "Its name starts with 'C'.",
            answer: "Cairo"
        ),
        Tab4QuestionChiken666(
            question: "Which country is known for its pyramids and ancient civilization?",
            hint1: "It is located in North Africa.",
            hint2: "Its name starts with 'E'.",
            answer: "Egypt"
        ),
        Tab4QuestionChiken666(
            question: "Which continent is known for having the Sahara Desert?",
            hint1: "It is the second-largest continent in terms of land area.",
            hint2: "Its name starts with 'A'.",
            answer: "Africa"
        ),
        Tab4QuestionChiken666(
            question: "What is the chemical symbol for oxygen?",
            hint1: "It is essential for respiration.",
            hint2: "Its name starts with 'O'.",
            answer: "O"
        ),
        Tab4QuestionChiken666(
            question: "Which animal is known for its black and white stripes?",
            hint1: "It is often found in Africa.",
            hint2: "Its name starts with 'Z'.",
            answer: "Zebra"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital of Spain?",
            hint1: "It is known for its bullfighting culture.",
            hint2: "Its name starts with 'M'.",
            answer: "Madrid"
        ),
        Tab4QuestionChiken666(
            question: "What is the chemical symbol for sodium?",
            hint1: "It is commonly found in table salt.",
            hint2: "Its name starts with 'N'.",
            answer: "Na"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest mammal on Earth?",
            hint1: "It is a type of whale.",
            hint2: "Its name starts with 'B'.",
            answer: "Blue whale"
        ),
        Tab4QuestionChiken666(
            question: "Which country invented the pizza?",
            hint1: "It is located in Europe.",
            hint2: "Its name starts with 'I'.",
            answer: "Italy"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest volcano in the world?",
            hint1: "It is located in Hawaii.",
            hint2: "Its name starts with 'M'.",
            answer: "Mauna Loa"
        ),
        Tab4QuestionChiken666(
            question: "Which planet is closest to the Sun?",
            hint1: "It is the smallest planet in our solar system.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionChiken666(
            question: "What is the process by which plants take in carbon dioxide and release oxygen?",
            hint1: "It is essential for life on Earth.",
            hint2: "Its name starts with 'P'.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionChiken666(
            question: "Which element is necessary for human life and is commonly found in the air?",
            hint1: "It is essential for breathing.",
            hint2: "Its name starts with 'O'.",
            answer: "Oxygen"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital of France?",
            hint1: "It is home to the Eiffel Tower.",
            hint2: "Its name starts with 'P'.",
            answer: "Paris"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest land animal?",
            hint1: "It is known for its long trunk.",
            hint2: "Its name starts with 'E'.",
            answer: "Elephant"
        ),
        Tab4QuestionChiken666(
            question: "Which city is famous for its opera house and harbor?",
            hint1: "It is located in Australia.",
            hint2: "Its name starts with 'S'.",
            answer: "Sydney"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital of Germany?",
            hint1: "It is known for the Brandenburg Gate.",
            hint2: "Its name starts with 'B'.",
            answer: "Berlin"
        ),
        Tab4QuestionChiken666(
            question: "Which planet is known as the 'Red Planet'?",
            hint1: "It is named after the Roman god of war.",
            hint2: "Its name starts with 'M'.",
            answer: "Mars"
        ),
        Tab4QuestionChiken666(
            question: "What is the longest river in the world?",
            hint1: "It flows through northeastern Africa.",
            hint2: "Its name starts with 'N'.",
            answer: "Nile"
        ),
        Tab4QuestionChiken666(
            question: "Which element is most abundant in the Earth's crust?",
            hint1: "It is used to make glass and ceramics.",
            hint2: "Its name starts with 'S'.",
            answer: "Silicon"
        ),
        Tab4QuestionChiken666(
            question: "What is the largest organ in the human body?",
            hint1: "It protects internal organs.",
            hint2: "Its name starts with 'S'.",
            answer: "Skin"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital city of Italy?",
            hint1: "It is home to the Colosseum and the Vatican.",
            hint2: "Its name starts with 'R'.",
            answer: "Rome"
        ),
        Tab4QuestionChiken666(
            question: "What is the primary function of red blood cells?",
            hint1: "They transport oxygen.",
            hint2: "Their name starts with 'R'.",
            answer: "Red blood cells"
        ),
        Tab4QuestionChiken666(
            question: "What is the process by which plants lose water through their leaves?",
            hint1: "It involves the evaporation of water.",
            hint2: "Its name starts with 'T'.",
            answer: "Transpiration"
        ),
        Tab4QuestionChiken666(
            question: "Which bird is known for its colorful feathers and ability to mimic sounds?",
            hint1: "It is often kept as a pet.",
            hint2: "Its name starts with 'P'.",
            answer: "Parrot"
        ),
        Tab4QuestionChiken666(
            question: "Which country is the birthplace of the famous philosopher Socrates?",
            hint1: "It is located in southern Europe.",
            hint2: "Its name starts with 'G'.",
            answer: "Greece"
        ),
        Tab4QuestionChiken666(
            question: "What is the capital of Canada?",
            hint1: "It is located in the province of Ontario.",
            hint2: "Its name starts with 'O'.",
            answer: "Ottawa"
        ),
        Tab4QuestionChiken666(
            question: "What is the only continent that is also a country?",
            hint1: "It is surrounded by the Southern Ocean.",
            hint2: "Its name starts with 'A'.",
            answer: "Australia"
        ),
        Tab4QuestionChiken666(
            question: "What is the most abundant gas in the Earth's atmosphere?",
            hint1: "It makes up about 78% of the atmosphere.",
            hint2: "Its name starts with 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionChiken666(
            question: "Which animal is known for its ability to change color?",
            hint1: "It is often found in tropical regions.",
            hint2: "Its name starts with 'C'.",
            answer: "Chameleon"
        ),
        Tab4QuestionChiken666(
            question: "What is the smallest country in the world by land area?",
            hint1: "It is located in Europe.",
            hint2: "Its name starts with 'V'.",
            answer: "Vatican City"
        ),
        Tab4QuestionChiken666(
            question: "Which fruit is known for its high vitamin C content?",
            hint1: "It is often associated with preventing scurvy.",
            hint2: "Its name starts with 'O'.",
            answer: "Orange"
        ),
        Tab4QuestionChiken666(
            question: "Which animal is known for its slow movement and tree-dwelling habits?",
            hint1: "It is often found in Central and South America.",
            hint2: "Its name starts with 'S'.",
            answer: "Sloth"
        ),
        Tab4QuestionChiken666(
            question: "What is the primary function of the human lungs?",
            hint1: "They are involved in gas exchange.",
            hint2: "Their name starts with 'L'.",
            answer: "Lungs"
        ),
        Tab4QuestionChiken666(
            question: "Which city is known for its iconic 'Big Ben' clock tower?",
            hint1: "It is located in the United Kingdom.",
            hint2: "Its name starts with 'L'.",
            answer: "London"
        )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
