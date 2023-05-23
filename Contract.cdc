pub contract BasicNFT{
    pub resource  NFT{
        pub let id: UInt64
        pub var name: String 

        init(initID:UInt64, initName:String){
            self.id = initID
            self.name = initName
        }
    }
    pub fun createNFT(id:UInt64, name:String):@NFT{
        return <- create NFT(initID:id, initName:name)
    }
    init(){
        self.account.save(<- create NFT(initID:1, initName:"Nitin"),to: /storage/BasicNFTPath)
    }
}
