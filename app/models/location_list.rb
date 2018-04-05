require 'geokit'
include Geokit::Geocoders

locations = {
  "Birmingham, AL" => [-86.802489, 33.5206608],
  "Hoover, AL" => [-86.8113781, 33.4053867],
  "Huntsville, AL" => [-86.5861037, 34.7303688],
  "Mobile, AL" => [-88.0398912, 30.6953657],
  "Montgomery, AL" => [-86.2999689, 32.3668052],
  "Tuscaloosa, AL" => [-87.569173499, 33.2098407],
  "Anchorage, AK" => [-149.9002778, 61.2180556],
  "Avondale, AZ" => [-112.3496021, 33.4355977],
  "Chandler, AZ" => [-111.8412502, 33.3061605],
  "Gilbert, AZ" => [-111.789027, 33.3528264],
  "Glendale, AZ" => [-112.228846177, 33.5433493074],
  "Mesa, AZ" => [-111.779777411, 33.3863226857],
  "Peoria, AZ" => [-112.213314494, 33.6182853976],
  "Phoenix, AZ" => [-112.06981438, 33.3363887826],
  "Scottsdale, AZ" => [-111.9260519, 33.4941704],
  "Surprise, AZ"  [-112.350708498, 33.6163832621]
  "Tempe, AZ" => [-111.95012962, 33.341857302]
  "Tucson, AZ" =>
  "Yuma, AZ, AK" =>
  "Fayetteville, AK" =>
  "Fort Smith, AK" =>
  "Jonesboro, AK" =>
  "Little Rock, AK" =>
  "Springdale, AK, CA" =>
  "Alameda, CA" =>
  "Alhambra, CA" =>
  "Anaheim, CA" =>
  "Antioch, CA" =>
  "Apple Valley, CA" =>
  "Bakersfield, CA" =>
  "Baldwin Park, CA" =>
  "Bellflower, CA" =>
  "Berkeley, CA" =>
  "Buena Park, CA" =>
  "Burbank, CA" =>
  "Carlsbad, CA" =>
  "Carson, CA" =>
  "Chico, CA" =>
  "Chino, CA" =>
  "Chino Hills, CA" =>
  "Chula Vista, CA" =>
  "Citrus Heights, CA" =>
  "Clovis, CA" =>
  "Compton, CA" =>
  "Concord, CA" =>
  "Corona, CA" =>
  "Costa Mesa, CA" =>
  "Daly City, CA" =>
  "Downey, CA" =>
  "El Cajon, CA" =>
  "Elk Grove, CA" =>
  "El Monte, CA" =>
  "Escondido, CA" =>
  "Fairfield, CA" =>
  "Folsom, CA" =>
  "Fontana, CA" =>
  "Fremont, CA" =>
  "Fresno, CA" =>
  "Fullerton, CA" =>
  "Garden Grove, CA" =>
  "Hawthorne, CA" =>
  "Hayward, CA" =>
  "Hemet, CA" =>
  "Hesperia, CA" =>
  "Huntington Beach, CA" =>
  "Indio, CA" =>
  "Inglewood, CA" =>
  "Irvine, CA" =>
  "Lake Forest, CA" =>
  "Lakewood, CA" =>
  "Lancaster, CA" =>
  "Livermore, CA" =>
  "Long Beach, CA" =>
  "Los Angeles, CA" =>
  "Lynwood, CA" =>
  "Manteca, CA" =>
  "Menifee, CA" =>
  "Merced, CA" =>
  "Milpitas, CA" =>
  "Mission Viejo, CA" =>
  "Modesto, CA" =>
  "Moreno Valley, CA" =>
  "Mountain View, CA" =>
  "Murrieta, CA" =>
  "Napa, CA" =>
  "Newport Beach, CA" =>
  "Norwalk, CA" =>
  "Oakland, CA" =>
  "Oceanside, CA" =>
  "Ontario, CA" =>
  "Orange, CA" =>
  "Oxnard, CA" =>
  "Palmdale, CA" =>
  "Pasadena, CA" =>
  "Perris, CA" =>
  "Pleasanton, CA" =>
  "Pomona, CA" =>
  "Rancho Cucamonga, CA" =>
  "Redding, CA" =>
  "Redlands, CA" =>
  "Redondo Beach, CA" =>
  "Redwood City, CA" =>
  "Rialto, CA" =>
  "Richmond, CA" =>
  "Riverside, CA" =>
  "Roseville, CA" =>
  "Sacramento, CA" =>
  "Salinas, CA" =>
  "San Bernardino, CA" =>
  "San Diego, CA" =>
  "San Buenaventura (Ventura), CA" =>
  "San Francisco, CA" =>
  "San Jose, CA" =>
  "San Leandro, CA" =>
  "San Marcos, CA" =>
  "San Mateo, CA" =>
  "San Ramon, CA" =>
  "Santa Ana, CA" =>
  "Santa Barbara, CA" =>
  "Santa Clara, CA" =>
  "Santa Clarita, CA" =>
  "Santa Maria, CA" =>
  "Santa Monica, CA" =>
  "Santa Rosa, CA" =>
  "Simi Valley, CA" =>
  "South Gate, CA" =>
  "Stockton, CA" =>
  "Sunnyvale, CA" =>
  "Temecula, CA" =>
  "Thousand Oaks, CA" =>
  "Torrance, CA" =>
  "Tracy, CA" =>
  "Turlock, CA" =>
  "Tustin, CA" =>
  "Union City, CA" =>
  "Upland, CA" =>
  "Vacaville, CA" =>
  "Vallejo, CA" =>
  "Victorville, CA" =>
  "Visalia, CA" =>
  "Vista, CA" =>
  "West Covina, CA" =>
  "Westminster, CA" =>
  "Whittier, CA, CO" =>
  "Arvada, CO" =>
  "Aurora, CO" =>
  "Boulder, CO" =>
  "Centennial, CO" =>
  "Colorado Springs, CO" =>
  "Denver, CO" =>
  "Fort Collins, CO" =>
  "Greeley, CO" =>
  "Longmont, CO" =>
  "Loveland, CO" =>
  "Pueblo, CO" =>
  "Thornton, CO, CT" =>
  "Bridgeport, CT" =>
  "Danbury, CT" =>
  "Hartford, CT" =>
  "New Britain, CT" =>
  "New Haven, CT" =>
  "Stamford, CT" =>
  "Waterbury, CT" =>
  "Wilmington, DE" =>
  "Washington, DC, FL" =>
  "Boca Raton, FL" =>
  "Boynton Beach, FL" =>
  "Cape Coral, FL" =>
  "Clearwater, FL" =>
  "Coral Springs, FL" =>
  "Davie, FL" =>
  "Deerfield Beach, FL" =>
  "Deltona, FL" =>
  "Fort Lauderdale, FL" =>
  "Gainesville, FL" =>
  "Hialeah, FL" =>
  "Hollywood, FL" =>
  "Jacksonville, FL" =>
  "Lakeland, FL" =>
  "Largo, FL" =>
  "Lauderhill, FL" =>
  "Melbourne, FL" =>
  "Miami, FL" =>
  "Miami Beach, FL" =>
  "Miami Gardens, FL" =>
  "Miramar, FL" =>
  "Orlando, FL" =>
  "Palm Bay, FL" =>
  "Palm Coast, FL" =>
  "Pembroke Pines, FL" =>
  "Plantation, FL" =>
  "Pompano Beach, FL" =>
  "Port St. Lucie, FL" =>
  "St. Petersburg, FL" =>
  "Sunrise, FL" =>
  "Tallahassee, FL" =>
  "Tampa, FL" =>
  "West Palm Beach, FL" =>
  "Albany, GA" =>
  "Athens, GA" =>
  "Atlanta, GA" =>
  "Augusta, GA" =>
  "Columbus, GA" =>
  "Johns Creek, GA" =>
  "Macon, GA" =>
  "Roswell, GA" =>
  "Sandy Springs, GA" =>
  "Savannah, GA" =>
  "Warner Robins, GA" =>
  "Honolulu, HI" =>
  "Boise City, ID" =>
  "Meridian, ID" =>
  "Nampa, ID" =>
  "Arlington Heights, IL" =>
  "Bloomington, IL" =>
  "Bolingbrook, IL" =>
  "Champaign, IL" =>
  "Chicago, IL" =>
  "Cicero, IL" =>
  "Decatur, IL" =>
  "Elgin, IL" =>
  "Evanston, IL" =>
  "Joliet, IL" =>
  "Naperville, IL" =>
  "Palatine, IL" =>
  "Rockford, IL" =>
  "Schaumburg, IL" =>
  "Sioux City, IL" =>
  "Springfield, IL" =>
  "Waukegan, IL, ID" =>
  "Carmel, ID" =>
  "Evansville, ID" =>
  "Fishers, ID" =>
  "Fort Wayne, ID" =>
  "Gary, ID" =>
  "Hammond, ID" =>
  "Indianapolis, ID" =>
  "Lafayette, ID" =>
  "Muncie, ID" =>
  "South Bend, ID" =>
  "Cedar Rapids, IA" =>
  "Davenport, IA" =>
  "Des Moines, IA" =>
  "Iowa City, IA" =>
  "Waterloo, IA" =>
  "Kansas City" =>
  "Lawrence, KY" =>
  "Olathe, KY" =>
  "Overland Park, KY" =>
  "Topeka, KY" =>
  "Wichita, KY" =>
  "Lexington, KY" =>
  "Louisville, KY" =>
  "Baton Rouge, LA" =>
  "Kenner, LA" =>
  "Lake Charles, LA" =>
  "New Orleans, LA" =>
  "Shreveport, LA" =>
  "Portland, ME" =>
  "Baltimore, MD" =>
  "Boston, MA" =>
  "Brockton, MA" =>
  "Cambridge, MA" =>
  "Fall River, MA" =>
  "Lowell, MA" =>
  "Lynn, MA" =>
  "New Bedford, MA" =>
  "Newton, MA" =>
  "Quincy, MA" =>
  "Somerville, MA" =>
  "Worcester, MA" =>
  "Ann Arbor, MI" =>
  "Dearborn, MI" =>
  "Detroit, MI" =>
  "Farmington Hills, MI" =>
  "Flint, MI" =>
  "Grand Rapids, MI" =>
  "Kalamazoo, MI" =>
  "Lansing, MI" =>
  "Livonia, MI" =>
  "Rochester Hills, MI" =>
  "Southfield, MI" =>
  "Sterling Heights, MI" =>
  "Troy, MI" =>
  "Warren, MI" =>
  "Westland, MI" =>
  "Wyoming, MI, MN" =>
  "Brooklyn Park, MN" =>
  "Duluth, MN" =>
  "Minneapolis, MN" =>
  "Plymouth, MN" =>
  "Rochester, MN" =>
  "St. Paul, MN" =>
  "Gulfport, MI" =>
  "Jackson, MI" =>
  "Columbia, MO" =>
  "Independence, MO" =>
  "Lee's Summit, MO" =>
  "O'Fallon, MO" =>
  "St. Joseph, MO" =>
  "St. Louis, MO" =>
  "Billings, MT" =>
  "Missoula, MT" =>
  "Lincoln, NE" =>
  "Omaha, NE" =>
  "Henderson, NV" =>
  "Las Vegas, NV" =>
  "North Las Vegas, NV" =>
  "Reno, NV" =>
  "Sparks, NV" =>
  "Manchester, NH" =>
  "Nashua, NH" =>
  "Camden, NJ" =>
  "Clifton, NJ" =>
  "Elizabeth, NJ" =>
  "Jersey City, NJ" =>
  "Newark, NJ" =>
  "Passaic, NJ" =>
  "Paterson, NJ" =>
  "Trenton, NJ" =>
  "Albuquerque, NM" =>
  "Las Cruces, NM" =>
  "Rio Rancho, NM" =>
  "Santa Fe, NM",
  "Buffalo, NY",
  "Mount Vernon, NY",
  "New Rochelle, NY",
  "New York, NY",
  "Schenectady, NY",
  "Syracuse, NY",
  "Yonkers, NY",
  "Asheville, NC",
  "Cary, NC",
  "Charlotte, NC",
  "Durham, NC",
  "Gastonia, NC",
  "Greensboro, NC",
  "High Point, NC",
  "Raleigh, NC",
  "Greenville, NC",
  "Fargo, ND",
  "Winston-Salem, NC, OH",
  "Akron, OH",
  "Canton, OH",
  "Cincinnati, OH",
  "Cleveland, OH",
  "Dayton, OH",
  "Parma, OH",
  "Toledo, OH",
  "Youngstown, OH",
  "Broken Arrow, OK",
  "Edmond, OK",
  "Lawton, OK",
  "Norman, OK",
  "Oklahoma City, OK",
  "Tulsa, OK",
  "Beaverton, OR",
  "Bend, OR",
  "Eugene, OR",
  "Gresham, OR",
  "Hillsboro, OR",
  "Medford, OR",
  "Salem, OR",
  "Allentown, PA" => [-75.4494513428, 40.5924054515],
  "Bethlehem, PA" => [-75.3617861524, 40.6291493135],
  "Erie, PA" => [-80.0873089965, 42.1007286233],
  "Philadelphia, PA" => [-75.1569774999, 39.9553999018],
  "Pittsburgh, PA" => [-79.9021192288, 40.4516625802],
  "Reading, PA" => [-75.9268747, 40.3356483],
  "Scranton, PA" => [-75.66241219999999, 41.408969],
  "Cranston, RI" =>  [-71.4372796, 41.7798226],
  "Pawtucket, RI" => [-71.38255579999999, 41.878711],
  "Providence, RI" => [-71.4128343, 41.8239891],
  "Warwick, RI" => [-71.4099359178, 41.7221732779]
  "Columbia, SC" => [-80.8273004322, 34.117996938]
  "Charleston, SC" => [-79.93105120000001, 32.7764749],
  "Mount Pleasant, SC" => [-79.82842579999999, 32.8323225],
  "Rock Hill, SC" => [-81.0249178286, 34.9403611496]
  "North Charleston, SC" => [-79.9748103, 32.8546197],
  "Rapid City, SD" => [-103.164928143, 44.0476131873],
  "Sioux Falls, SD" => [-96.73110340000001, 43.5445959],
  "Chattanooga, TN" => [-85.2164930176, 35.0949695099],
  "Clarksville, TN" => [-87.3594528, 36.5297706],
  "Knoxville, TN" => [-84.0146657626, 35.9123518408],
  "Memphis, TN" =>  [-90.0489801, 35.1495343],
  "Nashville, TN" => [-86.6254409227, 36.1457359079],
  "Murfreesboro, TN" => [-86.39027, 35.8456213],
  "Pearland, TX" =>  [-95.2860474, 29.5635666],
  "Plano, TX" => [-96.6988856, 33.0198431],
  "Abilene, TX" => [-99.8094542963, 32.4555700974]
  "Allen, TX" => [-96.67055030000002, 33.1031744],
  "Amarillo, TX" => [-101.879917865, 35.1592582432]
  "Arlington, TX" => [-97.10806559999999, 32.735687],
  "Austin, TX" => [-97.7430608, 30.267153],
  "Baytown, TX" => [-94.97742740000001, 29.7355047],
  "Beaumont, TX" => [-94.1265562, 30.080174],
  "Brownsville, TX" => [-97.4976232498, 25.8955374296],
  "Bryan, TX" => [-96.3699632, 30.6743643],
  "Carrollton, TX" => [-96.8899636, 32.9756415],
  "College Station, TX" => [-96.3344068, 30.627977],
  "Corpus Christi, TX" => [-97.39638099999999, 27.8005828],
  "Dallas, TX" => [-97.39638099999999, 27.8005828],
  "Denton, TX" => [-97.13306829999999, 33.2148412],
  "Edinburg, TX" => [-98.1633432, 26.3017374],
  "El Paso, TX" => [-106.4850217, 31.7618778],
  "Fort Worth, TX" => [-97.3307658, 32.7554883],
  "Frisco, TX" =>  [-96.82361159999999, 33.1506744],
  "Garland, TX" => [-96.63888329999999, 32.912624],
  "Grand Prairie, TX" => [-96.99778459999999, 32.7459645],
  "Houston, TX" => [-95.3698028, 29.7604267],
  "Irving, TX" => [-96.9488945, 32.8140177],
  "Killeen, TX" => [-97.72779589999999, 31.1171194],
  "Laredo, TX" => [-99.48032409999999, 27.5305671],
  "League City, TX" => [-95.0949303, 29.5074538],
  "Lewisville, TX" => [-96.994174, 33.046233],
  "Longview, TX" => [-94.74048909999999, 32.5007037],
  "Lubbock, TX" => [-101.8551665, 33.5778631],
  "McAllen, TX" => [-98.2193595931, 26.1949980642]
  "McKinney, TX" => [-96.6397822, 33.1972465],
  "Mesquite, TX" => [-96.5991593, 32.76679550000001],
  "Midland, TX" =>  [-102.0779146, 31.9973456],
  "Mission, TX" => [-98.32529319999999, 26.2159066],
  "Missouri City, TX" => [-95.5377215, 29.6185669],
  "Odessa, TX" => [-102.3676431, 31.8456816],
  "Pharr, TX" => [-98.1836216, 26.1947962],
  "Richardson, TX" => [-96.7298519, 32.9483335],
  "Round Rock, TX" => [-97.678896, 30.5082551],
  "San Angelo, TX" => [-100.4370375, 31.4637723],
  "San Antonio, TX" => [-98.49362819999999, 29.4241219],
  "Sugar Land, TX" => [-95.6634647412, 29.5783552161]
  "Tyler, TX" => [-95.30106239999999, 32.3512601],
  "Waco, TX" => [-97.1579774174, 31.5117523678]
  "Wichita Falls, TX" => [-98.504618583, 33.9302650306]
  "Layton, UT" => [-111.9710529, 41.0602216],
  "Ogden, UT" => [-111.9738304, 41.223],
  "Orem, UT" =>  [-111.6946475, 40.2968979],
  "Provo, UT" => [-111.661212444, 40.232620236]
  "St. George, UT" => [-113.5684164, 37.0965278],
  "Salt Lake City, UT" => [-111.8910474, 40.7607793],
  "Sandy, UT" => [-111.8389726, 40.5649781],
  "West Jordan, UT" => [-111.9391031, 40.6096698],
  "West Valley City, UT" => [-112.0010501, 40.6916132],
  "Burlington, VT" => [-73.2086198308, 44.460946618],
  "Alexandria, VA" => [-77.1224721932, 38.8284531703],
  "Chesapeake, VA" => [-76.3177018638, 36.7839750154],
  "Hampton, VA" => [-76.4191782167, 37.0456157587],
  "Lynchburg, VA" => [-79.2317572202, 37.3597415688],
  "Newport News, VA" => [-76.5476386412, 37.0997643865],
  "Norfolk, VA" => [-76.2835363228, 36.8332025094],
  "Portsmouth, VA" => [-76.2982742, 36.8354258],
  "Roanoke, VA" => [-79.9677554139, 37.2618194384],
  "Suffolk, VA" =>  [-76.5835621, 36.7282054],
  "Virginia Beach, VA" => [-76.1727405554, 36.8349343874]
  "Auburn, WA" => [-122.2284532, 47.30732279999999],
  "Bellevue, WA" => [-122.2015159, 47.6101497],
  "Bellingham, WA" => [-122.4786854, 48.7519112],
  "Everett, WA" => [-122.2020795, 47.9789848],
  "Federal Way, WA" => [-122.3126222, 47.3223221],
  "Kennewick, WA" => [-119.09767732, 46.2060808894],
  "Kent, WA" => [-122.184378398, 47.3583967927],
  "Renton, WA" => [-122.183908668, 47.4945393954],
  "Seattle, WA" => [-122.321754376, 47.5984232136],
  "Spokane, WA" => [--117.41513829, 47.7276194934],
  "Spokane Valley, WA" => [-117.28345739, 47.6770911301],
  "Tacoma, WA" => [-122.452402835, 47.1863864272],
  "Vancouver, WA" => [-122.598539476, 45.6357172365],
  "Yakima, WA" => [-120.5058987, 46.6020711],
  "Charleston, WV" => [-88.41538469999999, 44.2619309],
  "Appleton, WI" => [-88.41538469999999, 44.2619309],
  "Green Bay, WI" => [-88.0132958, 44.5133188],
  "Kenosha, WI" => [-87.82118539999999, 42.5847425],
  "Madison, WI" => [-89.4012302, 43.0730517],
  "Milwaukee, WI" => [-87.9064736, 43.0389025],
  "Racine, WI" => [-87.8123847764, 42.7572572814]
  "Waukesha, WI" => [-88.2314813, 43.0116784],
  "Cheyenne, WY" => [-104.777631834, 41.1585056144]
}
