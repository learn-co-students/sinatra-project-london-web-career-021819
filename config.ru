require_relative 'config/environment'

use Rack::MethodOverride
run ApplicationController
use UserController
use RestaurantController
