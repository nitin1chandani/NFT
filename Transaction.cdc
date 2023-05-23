import BasicNFT from 0x01

transaction() {

  prepare(signer:AuthAccount) {
  if signer.borrow<&BasicNFT.NFT>(from: /storage/BasicNFTPath) != nil {
    log("NFT Exist")
  } else {
    log("NFT do not Exist")
  }
    }
}
