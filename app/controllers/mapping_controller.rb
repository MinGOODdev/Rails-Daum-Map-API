require ('open-uri')
require ('json')

class MappingController < ApplicationController
def index
    @nTime = Time.new
  end

  def result
    @Search = params[:Search]
    link1 = 'https://apis.daum.net/local/v1/search/keyword.json?apikey=673aa4078a09e12a60e75c4d5bdc7078&query='
    my = params[:Search]
    link2 = '&location=37.5535590,126.936743&radius=5000'
    finalink = link1+my+link2

    get_info = JSON.parse open(finalink).read

    info = get_info["channel"]
    item = info["item"]
    
    # itemList = []
    
    # get_info.each do |k, v|
    #   info << v if k.include? 'channel'
    #   item = info["item"]
    # end
    
    
    
    item_0 = item[0]
    item_1 = item[1]
    item_2 = item[2]
    item_3 = item[3]
    item_4 = item[4]
    item_5 = item[5]
    item_6 = item[6]

    @Dire_1 = item_0['direction']
    @Dist_1 = item_0["distance"]
    @Titl_1 = item_0['title']
    @Cate_1 = item_0['category']
    @Adde_1 = item_0['newAddress']

    @Dire_2 = item_1['direction']
    @Dist_2 = item_1["distance"]
    @Titl_2 = item_1['title']
    @Cate_2 = item_1['category']
    @Adde_2 = item_1['newAddress']

    @Dire_3 = item_2['direction']
    @Dist_3 = item_2["distance"]
    @Titl_3 = item_2['title']
    @Cate_3 = item_2['category']
    @Adde_3 = item_2['newAddress']
    
    @Dire_4 = item_3['direction']
    @Dist_4 = item_3["distance"]
    @Titl_4 = item_3['title']
    @Cate_4 = item_3['category']
    @Adde_4 = item_3['newAddress']
    
    @Dire_5 = item_4['direction']
    @Dist_5 = item_4["distance"]
    @Titl_5 = item_4['title']
    @Cate_5 = item_4['category']
    @Adde_5 = item_4['newAddress']
    
    @Dire_6 = item_5['direction']
    @Dist_6 = item_5["distance"]
    @Titl_6 = item_5['title']
    @Cate_6 = item_5['category']
    @Adde_6 = item_5['newAddress']
    
    @Dire_7 = item_6['direction']
    @Dist_7 = item_6["distance"]
    @Titl_7 = item_6['title']
    @Cate_7 = item_6['category']
    @Adde_7 = item_6['newAddress']
  end
end
