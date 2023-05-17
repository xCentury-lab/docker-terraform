terraform {
  required_version = ">= 1.4.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner    = "git のorg名を記載"
  token    = "取得したトークンを入力"
}
