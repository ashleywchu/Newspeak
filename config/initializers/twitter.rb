client = Twitter::REST::Client.new do |config|
    config.consumer_key = "bw0EGCsxiDuBtf3nKjiMywjgt"
    config.consumer_secret = "8e3FdbX8IjlCVCQnLDvo7plrjw4QgHVmu72ZF7xJYzVzhy4Ulq"
    config.access_token = "3043129233-zpqBEPV9UuzmCG0FwCmEyIdHVO6BJntI8jjlTUQ"
    config.access_token_secret = "B1Arhe2QweIKoS4Pw5ijEDqJ8wD4boit1tZxh2INx87aF"
end

client.update("Breaking News; Newspeak: Get The Facts...")