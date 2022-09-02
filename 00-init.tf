// '서울' 리전 사용 등록
provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_key_pair" "nykwon_key" {
    key_name = "nykwon-key"
    public_key = file("../../users/BTC-N03/.ssh/linux.pub")
}