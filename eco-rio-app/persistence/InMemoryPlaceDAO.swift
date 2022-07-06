//
//  InMemoryPlaceDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 28/06/22.
//

import Foundation

class InMemoryPlaceDAO : PlaceDAO{

    
    override func getAllPlaces() -> [Place]{
        self.populateMockPlacesList()
        return self.placesList
    }
    
    
    override func getPlaces(userlocation : Location, interestRange: Int) -> [Place]{
        return []
    }
    
    func populateMockPlacesList() {
        
        // Define Locations
        let p1Location =  Location(latitude: 22.9493, longitude: 43.1546)
        let p2Location =  Location(latitude: 22.9582, longitude: 43.2116)
        let p3Location =  Location(latitude: 22.9638, longitude: 43.2223)
        let p4Location =  Location(latitude: 22.9300, longitude: 43.1724)
        let p5Location =  Location(latitude: 22.9723, longitude: 43.2035)
        let p6Location =  Location(latitude: 22.9738, longitude: 43.2110)
        let p7Location =  Location(latitude: 22.9799, longitude: 43.2421)
        let p8Location =  Location(latitude: 22.9739, longitude: 43.1853)
        let p9Location =  Location(latitude: 22.9873, longitude: 43.2212)
        
        
        let pepeEvalParqueLage = Evaluate(userRank: 4, userId: 2, placeId: 2)
        let wendyEvalParqueLage = Evaluate(userRank: 5, userId: 1, placeId: 2)
        let loloEvalParqueLage = Evaluate(userRank: 3, userId: 3, placeId: 2)
        
        let pepeEvalUrca = Evaluate(userRank: 4, userId: 2, placeId: 1)
        let wendyEvalUrca = Evaluate(userRank: 4, userId: 1, placeId: 1)
        
        let pepeEvalJB = Evaluate(userRank: 4, userId: 2, placeId: 3)
        
        let pepeEvalAterro = Evaluate(userRank: 5, userId: 2, placeId: 4)

        let pepeEvalCatacumba = Evaluate(userRank: 5, userId: 2, placeId: 5)
        
        let pepeEvalLagoa = Evaluate(userRank: 5, userId: 2, placeId: 6)
        
        let pepeEvalParqueCidade = Evaluate(userRank: 4.5, userId: 2, placeId: 7)
        
        let pepeEvalCopa = Evaluate(userRank: 4.7, userId: 2, placeId: 8)
        let wendyEvalCopa = Evaluate(userRank: 5, userId: 1, placeId: 8)

        
        let pepeEvalLeblon = Evaluate(userRank: 4.3, userId: 2, placeId: 9)
        let wendyEvalLEblon = Evaluate(userRank: 5, userId: 1, placeId: 9)







        
        // Create In Memory Places
        let p1 =  Trail(id: 1, name: "Trilha do Morro da Urca", meanRank: 5, visitCount: 2, photosURL: ["morro-urca"], endemicSpecies: ["Bromélias", "Orquídeas"], evaluations: [pepeEvalUrca,wendyEvalUrca ], location: p1Location,  totalDistance: "1.9 km", altitude:220, difficultyLevel: DifficultyLevelEnum.medium)
        
        let p2 =  OtherAttraction(id: 2, name: "Parque Lage", meanRank: 4.5, visitCount: 20, photosURL: ["parque-lage"], endemicSpecies: [], evaluations: [pepeEvalParqueLage, wendyEvalParqueLage, loloEvalParqueLage], location: p2Location, history: "O Parque Lage está ligado à memória de nossa cidade. Antigo engenho de açúcar na época do Brasil Colonial, suas terras se estendiam até as margens da lagoa", foundationYear: 1957, path: "", category: CategoryEnum.park)
        
        let p3 =  OtherAttraction(id: 3, name: "Jardim Botânico", meanRank: 5, visitCount: 60, photosURL: ["jardim-botanico"], endemicSpecies: [], evaluations: [pepeEvalJB], location: p3Location, history: "Ocupa uma área de 540 mil metros quadrados sendo tombado pelo IPHAN é um instituto de pesquisas e jardim botânico", foundationYear: 1808, path: "", category: CategoryEnum.park)
        
        let p4 =  OtherAttraction(id: 4, name: "Aterro do Flamengo", meanRank: 5, visitCount: 60, photosURL: ["aterro-fla"], endemicSpecies: [], evaluations: [pepeEvalAterro], location: p4Location,history: "Aterro do Flamengo é um complexo de lazer da cidade do Rio de Janeiro, no Brasil. Foi construído sobre aterros sucessivos na baía de Guanabara com uma área de 1.2 milhões de metros quadrados", foundationYear: 1965, path: "", category: CategoryEnum.park)
        
        let p5 =  Trail(id: 5, name: "Parque da Catacumba", meanRank: 5, visitCount: 20, photosURL: ["catacumba"], endemicSpecies: ["Alerta de desmatamento"], evaluations: [pepeEvalCatacumba], location: p5Location, totalDistance: "600 m", altitude:130, difficultyLevel: DifficultyLevelEnum.medium)
        
        let p6 =  OtherAttraction(id: 6, name: "Lagoa Rodrigo de Freitas", meanRank: 5, visitCount: 30, photosURL: ["lagoa"], endemicSpecies: [], evaluations: [pepeEvalLagoa], location: p6Location, history: "Inicialmente habitada pelos índios Tamoios, que a denominavam Piraguá, hoje é um dos locais favoritos dos turistas e cariocas para andar de bicicleta, correr e curtir o gramado", foundationYear: 1575, path: "", category: CategoryEnum.lagoon)
        
        let p7 =  OtherAttraction(id: 7, name: "Parque Natural Municipal da Cidade", meanRank: 3, visitCount: 60, photosURL: ["parque-da-cidade"], endemicSpecies: [], evaluations: [pepeEvalParqueCidade], location: p7Location, history: "O belo Parque da Cidade, é um parque municipal do Rio de Janeiro, localizado em uma antiga propriedade do Marquês de São Vicente, no Bairro da Gávea.", foundationYear: 1809, path: "", category: CategoryEnum.park)
        
        let p8 =  OtherAttraction(id: 8, name: "Praia de Copacabana", meanRank: 5, visitCount: 100, photosURL: ["praia-copa"], endemicSpecies: [], evaluations: [pepeEvalCopa,wendyEvalCopa], location: p8Location, history: "No século XVIII, com a inauguração de uma ermida em homenagem a Nossa Senhora de Copacabana, num rochedo no final da praia, o nome da praia e da região foi trocado para Copacabana", foundationYear: 0000, path: "", category: CategoryEnum.other)
        
        let p9 =  OtherAttraction(id: 9, name: "Praia do Leblon", meanRank: 5, visitCount: 45, photosURL: ["praia-leblon"], endemicSpecies: [], evaluations: [pepeEvalLeblon, wendyEvalLEblon], location: p9Location, history: "Em 1845, o empresário francês Charles Leblon comprou as terras e criou sua fazenda no final da praia. A fazenda ficaria conhecida como O Campo do Leblon.", foundationYear: 0000, path: "", category: CategoryEnum.other)
        
        // Array of Places
        let inMemoryPlaces = [p1, p2,p3, p4,p5,p6,p7,p8,p9]
        
        //Populates placesList with InMemoryPlaces
        self.placesList.append(contentsOf: inMemoryPlaces)
    }
    
    public func hasVisitedPlace(placeId: Int) -> Bool{
        
        let activeUser  = Session.getUsersDAO().currentActiveUser
        let activeUserEvaluations = activeUser!.evaluations
             
        if(activeUserEvaluations.contains(where: {$0.placeId == placeId})){
            return true
        }else{
            return false
        }
    }

}

