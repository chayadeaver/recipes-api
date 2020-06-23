class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :recipes
end
