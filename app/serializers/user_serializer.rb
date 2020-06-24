class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :recipes
end
