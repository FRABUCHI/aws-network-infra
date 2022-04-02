terraform {
	backend "s3" {
		bucket = "sample-api-server-tf-state"
		key = "prd-network.tfstate"
		region = "ap-northeast-2"
		encrypt = true
	}
}
