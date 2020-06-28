class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :recipes, :comments, :likes

end
