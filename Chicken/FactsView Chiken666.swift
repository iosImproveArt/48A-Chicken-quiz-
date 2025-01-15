

import SwiftUI

struct FactsViewChiken666: View {
    @State var timer: Timer?
    @State var selectedFact: FactChiken666? = facts.randomElement()!
    @State var showSheet = false
    
     var isLoggedIn: Bool = true
    var currentTemperature: Double = 22.5
    var favoriteColors: [String] = ["Blue", "Green", "Purple"]

    // Функції
    func greetUser(name: String) -> String {
        return "Hello, \(name)! Welcome to the app."
    }

    func calculateSquare(of number: Int) -> Int {
        return number * number
    }

    func fetchCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: Date())
    }

    func findMaximum(numbers: [Int]) -> Int? {
        return numbers.max()
    }

    func isPrime(_ number: Int) -> Bool {
        guard number > 1 else { return false }
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 20, weight: .regular, color: .hex("ADE552"))
                                .padding(.top, 20)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("ADE552"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFont(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("ADE552"))
                    
                    Rectangle()
                        .foregroundColor(.hex("402E27"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hex("402E27")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewChiken666(showLoading: false, selectedTab: .facts)
}


struct FactChiken666 {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactChiken666] = [
    
    FactChiken666(
        title: "The Fastest Animal on Earth",
        content: "The peregrine falcon is the fastest animal on Earth, reaching speeds of over 240 miles per hour (386 kilometers per hour) while diving for prey. This makes it much faster than the fastest land animal, the cheetah."
    ),
    FactChiken666(
        title: "The Largest Living Organism",
        content: "The largest living organism on Earth is a fungus in Oregon, USA, known as Armillaria ostoyae. It spans over 2,385 acres and is estimated to be thousands of years old. Despite its size, it remains mostly underground."
    ),
    FactChiken666(
        title: "The Oldest Known Tree",
        content: "The oldest known tree on Earth is a bristlecone pine named 'Methuselah,' located in California. It is over 4,800 years old and still standing, making it one of the most resilient living organisms."
    ),
    FactChiken666(
        title: "The Hottest Recorded Temperature on Earth",
        content: "The hottest temperature ever recorded on Earth was 134°F (56.7°C) in Furnace Creek Ranch, California, in 1913. This remains the highest temperature ever measured on the planet's surface."
    ),
    FactChiken666(
        title: "The Longest Living Animal",
        content: "The bowhead whale holds the record for the longest living mammal, with some individuals reaching over 200 years of age. They live in the Arctic and sub-Arctic regions of the northern hemisphere."
    ),
    FactChiken666(
        title: "The Largest Desert in the World",
        content: "The largest desert on Earth is the Antarctic Desert, which covers about 5.5 million square miles (14.2 million square kilometers). Despite being covered in ice, it qualifies as a desert due to its low precipitation."
    ),
    FactChiken666(
        title: "The Smallest Bone in the Human Body",
        content: "The smallest bone in the human body is the stapes, located in the ear. It measures just about 0.1 inches (2.5 mm) in length and plays a crucial role in hearing by transmitting sound vibrations."
    ),
    FactChiken666(
        title: "The Tallest Mountain on Earth",
        content: "Mount Everest is the tallest mountain on Earth, standing at 29,032 feet (8,849 meters) above sea level. It is located in the Himalayas, on the border between Nepal and China."
    ),
    FactChiken666(
        title: "The Largest Living Land Animal",
        content: "The African elephant holds the title for the largest living land animal, with males weighing up to 14,000 pounds (6,350 kilograms) and standing as tall as 13 feet (4 meters) at the shoulder."
    ),
    FactChiken666(
        title: "The Heaviest Animal on Earth",
        content: "The blue whale is the heaviest animal on Earth, with adults weighing as much as 200 tons (180,000 kilograms). Despite their size, they feed on tiny krill and can grow up to 100 feet (30 meters) long."
    ),
    FactChiken666(
        title: "The Longest River in the World",
        content: "The longest river in the world is the Nile River in Africa, stretching about 4,135 miles (6,650 kilometers). It flows through eleven countries, providing water to millions of people in the region."
    ),
    FactChiken666(
        title: "The Largest Volcano on Earth",
        content: "The largest volcano on Earth is Mauna Loa in Hawaii. It covers an area of about 5,271 square kilometers (2,035 square miles) and rises over 13,681 feet (4,170 meters) above sea level."
    ),
    FactChiken666(
        title: "The Coldest Place on Earth",
        content: "The coldest place on Earth is Antarctica, where temperatures can drop below -128°F (-89°C), as recorded at the Soviet Union's Vostok Station in 1983. The continent is home to the Earth's largest ice sheet."
    ),
    FactChiken666(
        title: "The Most Expensive Substance on Earth",
        content: "Antimatter is the most expensive substance on Earth, costing around $62.5 trillion per gram. It is used in particle accelerators for scientific research and holds immense energy potential."
    ),
    FactChiken666(
        title: "The Largest Mammal on Earth",
        content: "The blue whale is the largest mammal on Earth, growing up to 100 feet (30 meters) in length and weighing as much as 200 tons. It feeds on small ocean creatures like krill."
    ),
    FactChiken666(
        title: "The Oldest Known Animal",
        content: "The oldest known animal was a quahog clam named 'Ming,' discovered off the coast of Iceland. It was 507 years old when it was found in 2006, making it the oldest living non-colonial animal ever discovered."
    ),
    FactChiken666(
        title: "The Deepest Place on Earth",
        content: "The Mariana Trench is the deepest part of the world's oceans, plunging to a depth of about 11 kilometers (7 miles). Located in the western Pacific Ocean, it is deeper than Mount Everest is tall. At its bottom, the pressure is more than 1,000 times atmospheric pressure at sea level."
    ),
    FactChiken666(
        title: "The Fastest Animal on Earth",
        content: "The peregrine falcon is the fastest animal on Earth, reaching speeds of over 240 miles per hour (386 kilometers per hour) while diving for prey. This makes it much faster than the fastest land animal, the cheetah."
    ),
    FactChiken666(
        title: "The Oldest Operating Company",
        content: "The oldest operating company in the world is the Kongō Gumi, a Japanese construction company that was founded in 578 AD. It specialized in building Buddhist temples and is still operational today."
    ),
    FactChiken666(
        title: "The First Computer",
        content: "The first mechanical computer, known as the Analytical Engine, was designed by Charles Babbage in the 1830s. It is considered the precursor to modern computers, though it was never fully built during his lifetime."
    ),
    FactChiken666(
        title: "The First Human to Travel into Space",
        content: "Yuri Gagarin, a Soviet cosmonaut, was the first human to travel into space on April 12, 1961. His spacecraft, Vostok 1, completed one orbit of Earth in 108 minutes."
    ),
    FactChiken666(
        title: "The Longest Word in the Dictionary",
        content: "The longest word in the Oxford English Dictionary is 'pneumonoultramicroscopicsilicovolcanoconiosis,' a lung disease caused by inhaling very fine silica dust."
    ),
    FactChiken666(
        title: "The Most Expensive Coffee",
        content: "The most expensive coffee in the world is Kopi Luwak, made from beans eaten and excreted by civet cats. The beans are collected from the feces of the animal, cleaned, and processed. The price can reach up to $600 per pound."
    ),
    FactChiken666(
        title: "The Largest Art Museum in the World",
        content: "The Louvre Museum in Paris, France, is the largest art museum in the world, covering 782,910 square feet (72,735 square meters). It is home to thousands of works of art, including the famous painting, the Mona Lisa."
    ),
    FactChiken666(
        title: "The First Video Game",
        content: "The first video game ever created was 'Tennis for Two,' developed in 1958 by physicist William Higinbotham. It was a simple tennis simulation that was displayed on an oscilloscope."
    ),
    FactChiken666(
        title: "The Oldest Known Civilization",
        content: "The Sumerians, who lived in Mesopotamia (modern-day Iraq), are considered to be the oldest known civilization, with their history dating back to around 3,000 BCE. They are credited with inventing writing and creating the first cities."
    ),
    FactChiken666(
        title: "The Most Powerful Computer",
        content: "As of 2021, the most powerful supercomputer in the world is Fugaku, developed by RIKEN and Fujitsu in Japan. It can perform more than 442 quadrillion calculations per second."
    ),
    FactChiken666(
        title: "The Largest Movie Franchise",
        content: "The Marvel Cinematic Universe (MCU) is the largest and highest-grossing movie franchise in history, having earned over $23 billion at the global box office as of 2021."
    ),
    FactChiken666(
        title: "The Tallest Building in the World",
        content: "The tallest building in the world is the Burj Khalifa in Dubai, United Arab Emirates. It stands at 828 meters (2,717 feet) tall and has 163 floors."
    ),
    FactChiken666(
        title: "The Largest Diamond Ever Found",
        content: "The largest diamond ever found was the Cullinan Diamond, which weighed 3,106 carats (1.37 pounds). It was discovered in South Africa in 1905 and was later cut into several stones, including the Great Star of Africa."
    ),
    FactChiken666(
        title: "The Most Expensive Painting Ever Sold",
        content: "The most expensive painting ever sold is Leonardo da Vinci's 'Salvator Mundi,' which was auctioned for $450.3 million in 2017."
    ),
    FactChiken666(
        title: "The Most Expensive Substance on Earth",
        content: "Antimatter is the most expensive substance on Earth, costing around $62.5 trillion per gram. It is used in particle accelerators for scientific research and holds immense energy potential."
    ),
    FactChiken666(
        title: "The First Phone Call",
        content: "The first telephone call was made by Alexander Graham Bell on March 10, 1876, when he famously said, 'Mr. Watson, come here, I want to see you.'"
    ),
    FactChiken666(
        title: "The Largest Animal on Earth",
        content: "The blue whale is the largest animal on Earth, growing up to 100 feet (30 meters) in length and weighing as much as 200 tons. It feeds on small ocean creatures like krill."
    ),
    FactChiken666(
        title: "The Deepest Place on Earth",
        content: "The Mariana Trench is the deepest part of the world's oceans, plunging to a depth of about 11 kilometers (7 miles). Located in the western Pacific Ocean, it is deeper than Mount Everest is tall. At its bottom, the pressure is more than 1,000 times atmospheric pressure at sea level. Despite the extreme pressure, scientists have found a variety of life forms that manage to survive in this harsh environment, demonstrating the adaptability of life to even the most hostile conditions on Earth."
    ),
    FactChiken666(
        title: "The Fastest Animal on Earth",
        content: "The peregrine falcon is the fastest animal on Earth, capable of reaching speeds of over 240 miles per hour (386 kilometers per hour) while diving toward prey. This speed is much faster than any other animal, including the cheetah, the fastest land animal. When hunting, the falcon dives from great heights, using its aerodynamic body to reach these incredible speeds. This unique hunting technique allows the peregrine falcon to catch birds mid-air, often with lethal precision."
    ),
    FactChiken666(
        title: "The Oldest Operating Company",
        content: "The oldest operating company in the world is Kongō Gumi, a Japanese construction company founded in 578 AD. This company, which specializes in the construction of Buddhist temples, has been in continuous operation for over 1,400 years. Despite facing numerous challenges, including wars and financial crises, Kongō Gumi has managed to survive, largely due to its expertise in traditional Japanese architecture. In 2006, the company was absorbed into the Takamatsu Construction Group, but it continues to operate under its original name and maintains a proud tradition of temple building."
    ),
    FactChiken666(
        title: "The First Computer",
        content: "The first mechanical computer was designed by Charles Babbage in the 1830s, known as the Analytical Engine. Though it was never fully constructed during his lifetime, the design of the Analytical Engine is considered the precursor to modern computers. It was a mechanical device capable of performing arithmetic calculations, and its design included components such as a control unit, arithmetic logic unit, and memory, concepts that are still fundamental to modern computing. Ada Lovelace, who worked with Babbage, is often credited as the world's first computer programmer for her work on the engine's operation."
    ),
    FactChiken666(
        title: "The First Human to Travel into Space",
        content: "Yuri Gagarin made history on April 12, 1961, when he became the first human to journey into outer space aboard the Soviet spacecraft Vostok 1. During his 108-minute flight, Gagarin completed one orbit of the Earth, reaching an altitude of over 200 miles (320 kilometers). His flight was a major milestone in the Space Race, the Cold War-era competition between the United States and the Soviet Union for space exploration supremacy. Gagarin’s achievement not only marked a significant technological achievement but also made him a global icon and a hero in the Soviet Union and around the world."
    ),
    FactChiken666(
        title: "The Longest Word in the Dictionary",
        content: "The longest word in the Oxford English Dictionary is 'pneumonoultramicroscopicsilicovolcanoconiosis,' a lung disease caused by inhaling very fine silica dust. This word, which contains 45 letters, was coined in the 1930s by Everett Smith, the president of the National Puzzlers' League, as a deliberately long word meant to describe a lung disease caused by the inhalation of volcanic ash. Though it is rarely used in medical contexts, it has become famous for its extreme length and is often cited as one of the longest words in the English language."
    ),
    FactChiken666(
        title: "The Most Expensive Coffee",
        content: "Kopi Luwak, also known as civet coffee, is considered the most expensive coffee in the world. This unique coffee is made using beans that have been eaten and then excreted by civet cats. The beans are collected from the feces of the animal, cleaned, and processed into coffee. The process of fermentation that occurs in the civet's digestive tract is believed to give the coffee its distinct flavor profile, which is smooth, less acidic, and often described as earthy. The price of Kopi Luwak can reach up to $600 per pound, making it an exclusive and highly sought-after beverage among coffee connoisseurs."
    ),
    FactChiken666(
        title: "The Largest Art Museum in the World",
        content: "The Louvre Museum in Paris, France, is the largest art museum in the world, spanning 782,910 square feet (72,735 square meters). It houses over 380,000 objects, including works of art, historical artifacts, and sculptures. Among its most famous works are Leonardo da Vinci's 'Mona Lisa' and the ancient Greek statue, the 'Venus de Milo.' Originally built as a royal palace in the late 12th century, the Louvre became a public museum during the French Revolution in 1793. Today, it attracts millions of visitors each year and remains one of the most visited and renowned cultural institutions globally."
    ),
    FactChiken666(
        title: "The First Video Game",
        content: "The first video game ever created was 'Tennis for Two,' designed by physicist William Higinbotham in 1958. It was a simple tennis simulation that was displayed on an oscilloscope screen at the Brookhaven National Laboratory in New York. While 'Tennis for Two' was a rudimentary game by today's standards, it marked the beginning of the video game industry. The game allowed two players to control paddles and hit a ball back and forth, offering a precursor to future video games. It was later followed by 'Pong,' created by Atari in 1972, which popularized video gaming on a larger scale."
    ),
    FactChiken666(
        title: "The Oldest Known Civilization",
        content: "The Sumerians, who lived in the region of Mesopotamia (modern-day Iraq), are considered the oldest known civilization, with their history dating back to around 3,000 BCE. They are credited with creating the first form of writing, cuneiform, which was used for record-keeping, trade, and religious texts. The Sumerians also built the first known cities, including Uruk, Ur, and Lagash, and developed advanced agricultural techniques, including irrigation systems. Their innovations in mathematics, astronomy, and law laid the foundation for many aspects of modern civilization."
    ),
    FactChiken666(
        title: "The Most Powerful Computer",
        content: "As of 2021, the world's most powerful supercomputer is Fugaku, developed by RIKEN and Fujitsu in Japan. Fugaku has an incredible computing power of more than 442 quadrillion calculations per second, making it over 2.8 times faster than the previous record-holder, Summit. Fugaku is used for a wide range of applications, from simulating the behavior of proteins for drug discovery to modeling natural disasters and advancing scientific research in areas like climate change. Its development marks a significant leap in the quest to create faster and more efficient computational models for solving complex problems in various fields."
    ),
    FactChiken666(
        title: "The Tallest Building in the World",
        content: "The Burj Khalifa in Dubai, United Arab Emirates, currently holds the title of the tallest building in the world, reaching an astounding height of 828 meters (2,717 feet). Completed in 2010, the Burj Khalifa has 163 floors and is used for various purposes, including office spaces, luxury apartments, and hotels. Its design is inspired by Islamic architecture, with a series of setbacks and geometric patterns, and it is equipped with cutting-edge technology, including an advanced cooling system. The Burj Khalifa has become a symbol of Dubai’s rapid urban growth and technological progress."
    ),
    FactChiken666(
        title: "The Largest Diamond Ever Found",
        content: "The Cullinan Diamond, discovered in South Africa in 1905, remains the largest diamond ever found. Weighing a massive 3,106 carats (1.37 pounds), the diamond was cut into several smaller stones, some of which are now part of the British Crown Jewels. The largest of these stones, the Great Star of Africa, is a 530-carat diamond set in the Sovereign's Sceptre with Cross. The discovery of the Cullinan Diamond was a significant event in the history of diamond mining, and its legacy continues to inspire awe for its size and beauty."
    ),
    FactChiken666(
        title: "The Most Expensive Painting Ever Sold",
        content: "Leonardo da Vinci's 'Salvator Mundi' became the most expensive painting ever sold at auction when it fetched $450.3 million in November 2017. The painting depicts Jesus Christ holding a crystal orb, and it was believed to have been painted by Da Vinci in the early 1500s. The sale of 'Salvator Mundi' broke previous records for artwork sales and sparked controversy regarding its authenticity, with some experts questioning whether Da Vinci was the true artist. Despite the debates, the sale highlighted the growing value of rare and historic artworks in the global art market."
    ),
    FactChiken666(
        title: "The Largest Living Structure on Earth",
        content: "The Great Barrier Reef, located off the coast of Queensland, Australia, is the largest living structure on Earth. Stretching over 2,300 kilometers (1,430 miles), the reef consists of over 2,900 individual reefs and 900 islands. It is home to an incredibly diverse ecosystem, including coral species, fish, marine mammals, and sea turtles. The Great Barrier Reef is a UNESCO World Heritage site and is considered one of the seven natural wonders of the world. However, it is facing significant threats from climate change, pollution, and overfishing, which have led to coral bleaching and other environmental challenges."
    ),
    FactChiken666(
        title: "The Longest River in the World",
        content: "The Nile River, running through northeastern Africa, is traditionally regarded as the longest river in the world, measuring approximately 6,650 kilometers (4,130 miles) in length. It flows through 11 countries, including Egypt, Sudan, and Uganda, and provides a vital water source for millions of people. The Nile has been central to the development of ancient civilizations, especially in Egypt, where it played a crucial role in agriculture, trade, and transportation. Recent studies suggest that the Amazon River in South America might surpass the Nile in length, but the debate continues among scientists."
    ),
    FactChiken666(
        title: "The First Human on the Moon",
        content: "On July 20, 1969, Neil Armstrong made history as the first human to set foot on the Moon during NASA’s Apollo 11 mission. His famous words, 'That’s one small step for [a] man, one giant leap for mankind,' were broadcast to millions of people around the world. Armstrong was followed by astronaut Buzz Aldrin, who also walked on the Moon's surface, while Michael Collins remained in lunar orbit aboard the Command Module. The Apollo 11 mission was a major milestone in the Space Race and remains one of the most iconic achievements in human space exploration."
    ),
    FactChiken666(
        title: "The Most Expensive Substance on Earth",
        content: "Antimatter, a substance composed of antiparticles that annihilate ordinary matter upon contact, is the most expensive substance on Earth, costing around $62.5 trillion per gram. Antimatter is produced in small quantities in particle accelerators, where it is used in scientific experiments to better understand the fundamental laws of physics. Due to its potential for energy release, antimatter has been a subject of research for use in future energy production and propulsion systems for space travel. However, producing and storing antimatter remains a major challenge due to the extreme cost and difficulty of containment."
    ),
    FactChiken666(
        title: "The Largest Volcano on Earth",
        content: "The Mauna Loa volcano, located on the Big Island of Hawaii, is the largest volcano on Earth in terms of volume and area covered. Standing at 4,169 meters (13,681 feet) above sea level, Mauna Loa's base extends deep beneath the ocean, making it even taller than Mount Everest when measured from its oceanic base. It covers an area of about 5,271 square kilometers (2,035 square miles), and its eruptions have been both catastrophic and constructive, shaping the Hawaiian islands over millions of years. Despite its size, Mauna Loa has not erupted since 1984, though it remains an active volcano and a subject of scientific study."
    ),
    FactChiken666(
        title: "The World's Largest Snowflake",
        content: "The largest snowflake ever recorded was found in Fort Keogh, Montana, in 1887. It measured 38 centimeters (15 inches) across and 20 centimeters (8 inches) thick, making it the largest snowflake ever documented by the Guinness World Records. Snowflakes form when water vapor freezes into ice crystals in clouds. They come in various shapes and sizes, with most snowflakes being small and intricate, displaying a unique six-sided structure. However, extreme weather conditions, such as those in Montana, can sometimes lead to the formation of exceptionally large snowflakes."
    ),
    FactChiken666(
        title: "The First Phone Call",
        content: "On March 10, 1876, Alexander Graham Bell made the first successful telephone call, famously saying, 'Mr. Watson, come here, I want to see you.' Bell had been working on inventing a device that could transmit speech over electrical wires, and this breakthrough marked the beginning of the telecommunications revolution. The telephone became widely available to the public in the years that followed, transforming global communication by making it possible for people to connect over long distances. Bell's invention ultimately led to the formation of the Bell Telephone Company, which later became AT&T, one of the largest telecommunications companies in the world."
    ),
    FactChiken666(
        title: "The Most Expensive Hotel Suite",
        content: "The Empathy Suite at the Palms Casino Resort in Las Vegas holds the title of the most expensive hotel suite in the world. The suite, designed by artist Damien Hirst, costs around $100,000 per night to stay in. It spans 9,000 square feet and features luxurious amenities such as a private pool, a massive art collection, a wellness center, and personalized concierge services. The suite's extravagant design includes Hirst's signature art pieces, such as a room with a massive shark suspended in formaldehyde. The Empathy Suite is aimed at the ultra-wealthy and offers an exclusive experience for those seeking unparalleled luxury."
    ),
    FactChiken666(
        title: "The Origins of the Internet",
        content: "The internet, as we know it today, began in the 1960s as a project funded by the U.S. Department of Defense called ARPANET (Advanced Research Projects Agency Network). ARPANET was designed to connect universities and military research centers for easier communication. By the 1970s, the concept of networked computers evolved with the development of protocols like TCP/IP, which allowed different computer systems to communicate with each other, forming the foundation for the modern internet. The internet rapidly expanded in the 1990s, becoming a global network that revolutionized communication, commerce, and information sharing."
    ),
    FactChiken666(
        title: "The Largest Animal on Earth",
        content: "The blue whale, known as the largest animal ever to have lived on Earth, can grow up to 30 meters (98 feet) long and weigh as much as 180 metric tons. These majestic marine mammals are found in all the world's oceans, except the Arctic. Despite their enormous size, blue whales feed mainly on tiny shrimp-like creatures called krill. They can consume up to 4 tons of krill a day during feeding seasons. The blue whale's size is unmatched in the animal kingdom, with its heart alone weighing as much as an automobile."
    ),
    FactChiken666(
        title: "The First Human-Created Object",
        content: "Voyager 1, launched by NASA in 1977, is the first human-made object to leave our solar system. The spacecraft's primary mission was to study Jupiter and Saturn, but it continued its journey out of the solar system after completing its tasks. In 2012, Voyager 1 crossed the boundary known as the heliopause, marking its exit from the influence of the Sun's solar wind. Currently, Voyager 1 is over 14 billion miles away from Earth and is still sending back scientific data, although its power is expected to run out by 2025. The Golden Record aboard Voyager 1 carries sounds and images representing humanity, designed as a message to potential extraterrestrial civilizations."
    ),
    FactChiken666(
        title: "The World’s Largest Ice Sheet",
        content: "The Antarctic Ice Sheet, covering an area of 14 million square kilometers (5.4 million square miles), is the largest single mass of ice on Earth. It holds about 60% of the world’s fresh water, and if it were to melt completely, it would raise global sea levels by approximately 60 meters (200 feet). The ice sheet is so vast that it contains 90% of Earth's total ice mass. Scientists are studying the Antarctic Ice Sheet to understand how climate change is affecting its stability and what impact it could have on global sea levels in the future."
    ),
    FactChiken666(
        title: "The First Artificial Satellite",
        content: "Sputnik 1, launched by the Soviet Union on October 4, 1957, was the first artificial satellite to orbit the Earth. It weighed 83.6 kilograms (184 pounds) and transmitted radio signals back to Earth for 21 days before its batteries were exhausted. The launch of Sputnik 1 marked the beginning of the Space Race between the United States and the Soviet Union. The satellite’s success demonstrated the Soviets' capabilities in space exploration and sparked fears of technological inferiority in the United States, eventually leading to the creation of NASA and increased space exploration efforts worldwide."
    ),
    FactChiken666(
        title: "The Oldest Known Tree",
        content: "The oldest known living tree is a bristlecone pine located in the White Mountains of California, USA. This tree, named Methuselah, is over 4,800 years old. It has survived harsh weather conditions and even environmental stresses like droughts and extreme temperatures. Scientists have been studying Methuselah and other ancient trees to learn about climate change and the effects of time on ecosystems. These trees are important symbols of resilience, offering valuable data for understanding the Earth's long-term environmental history."
    ),
    FactChiken666(
        title: "The Great Wall of China",
        content: "The Great Wall of China, one of the most impressive architectural feats in history, stretches approximately 21,196 kilometers (13,171 miles) across northern China. Construction of the wall began as early as the 7th century BC and continued for centuries, with the most well-known sections being built during the Ming Dynasty (1368–1644). The wall was constructed to protect Chinese states from invasions by nomadic tribes, particularly the Mongols. The Great Wall is not a single continuous wall but a series of fortifications, watchtowers, and defensive structures built over different periods and locations."
    ),
    FactChiken666(
        title: "The World's First Computer",
        content: "The first mechanical computer, known as the 'analytical engine,' was designed by Charles Babbage in the 1830s. Although it was never fully built during his lifetime, the analytical engine is considered the precursor to modern computers due to its ability to perform mathematical calculations and store data. It used punch cards to input data, a concept later adopted by early computers. Babbage's invention laid the groundwork for the development of programmable machines, and his work heavily influenced pioneers such as Alan Turing, who is often regarded as the father of modern computer science."
    ),
    FactChiken666(
        title: "The Largest Hot Desert",
        content: "The Sahara Desert, located in northern Africa, is the largest hot desert in the world, covering an area of approximately 9.2 million square kilometers (3.6 million square miles). It spans across 11 countries, including Egypt, Algeria, and Libya, and is home to various unique ecosystems, including oases and vast sand dunes. Despite being one of the hottest places on Earth, the Sahara is not completely devoid of life. Several species of plants, animals, and insects are adapted to survive in this harsh environment. The desert is also rich in history, with ancient trade routes and archaeological sites scattered throughout the region."
    ),
    FactChiken666(
        title: "The Most Volcanically Active Planet in the Solar System",
        content: "Jupiter's moon Io is the most volcanically active body in our solar system. It has hundreds of active volcanoes, some of which spew lava fountains that can reach heights of up to 500 kilometers (310 miles). The intense volcanic activity on Io is a result of tidal heating, caused by the gravitational interaction between Io, Jupiter, and other moons of Jupiter. This constant stretching and flexing of Io’s interior generate immense heat, making it a geologically dynamic world. NASA’s spacecraft, like Galileo and Juno, have provided us with detailed images and data about Io’s volcanic eruptions and surface features."
    )
]
