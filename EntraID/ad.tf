# Új felhasználó létrehozása az Entra ID-ban (Azure AD)
resource "azuread_user" "new_user" {
  user_principal_name = "jdoe@sajatdomain.onmicrosoft.com"
  display_name        = "John Doe"
  mail_nickname       = "jdoe"
  password            = "KezdoJelszo123!"
  force_password_change_on_login = true
}

# Biztonsági csoport létrehozása
resource "azuread_group" "marketing" {
  display_name     = "Marketing Group"
  security_enabled = true
}