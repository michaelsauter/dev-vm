git() {

  echolog "Ensure git is installed"

  is_met() {
    which git
  }

  meet() {
    sudo apt-get update
    sudo apt-get install -y -q git
  }

}
