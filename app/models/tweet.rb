class Tweet < ActiveRecord::Base
  
 # Twitter.configure do |config|
 #   config.consumer_key = '4UbJVasz2VEKKVsy0nlIg'
 #   config.consumer_secret = 'GKsGglSs2hVh5aRamScS59bQJKmnr4EUUmLgVi9Xo'
 #   config.oauth_token = '1143023234-SjqVRnytfejX2kE1LnCvzaNgG34mrxQsVIF53db'
 #   config.oauth_token_secret = 'mYxB32QN51IflTkeRTBwYfryhVqRmv40Lez8Sis'
 # end

#Twitter.configure do |config|
#    config.consumer_key = 'VXZCK1w2BpERLGJPeLueig'
#    config.consumer_secret = 'SD6RPNoSbBNsJSCfAB7eVIk7M2SgUodorQeRq4TI1E'
#    config.oauth_token = '344334932-QveQmkQFEGd1Iw6HxdBYVxk8PCCDHgYDsP8wtBxs'
#    config.oauth_token_secret = '5yaXJHltED07u0LGnCTDP3n5nPSPOntD6RryutKT6s'
#  end

# Datos para Direccion a mi Propia cuenta TWITTER
#-------------------------------------------------
Twitter.configure do |config|
    config.consumer_key = 'Go3cSXZ0TL2xUwLV3fTig'
    config.consumer_secret = 'noSuggae6p8uqagO9ZYqKnkpNud4UIorXqdjR3hio'
    config.oauth_token = '1143023234-5oeTjqbcsbdlGIIIsHm25dluhoz2oL4iy8Wg3ad'
    config.oauth_token_secret = '1WJZCAKITbNpzkudXMfNqRheEtumOXd8thD53Djk'
  end


  def read_text
    return "sin status" if self.status.blank?
    Twitter.status(self.status).text
  end
  
  def read_message
    return "sin user" if self.user.blank?
     Twitter.user_timeline(self.user).first.text
     #Twitter.status(self.status).text
     #Twitter.status(297830223519576064)
     # Twitter.status(self.user).text
  end

  def update_status
    return "sin update" if self.status.blank?
    Twitter.update(self.status)
  end
end
