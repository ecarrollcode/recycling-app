# TL;DR Recycling App

This is a web application aimed at providing localized recycling information based on a user's current/inputted location. It provides them with information on each recyclable in their city, what bin it goes into, and what category of recyclables it falls under. Furthermore, they are able to get the locations of recycling centers plotted on a map. There is also more information on the recycling categories provided as an overlay. The app can be navigated by scrolling through it, or by searching for items/categories/recycling centers/cities at the top.

## Installation

To install this app, do the following steps:
1. Get the repository on your computer: `git clone https://github.com/ecarrollcode/recycling-app`
2. In the recycling-app directory, run `bundle install`
3. Start the MySQL database by running `mysqld --skip-grant-tables`
4. Run `rails db:setup`
5. You are ready to run the app! To do this, type `rails s` and navigate to `localhost:3000` on your web browser. 

## Usage

The app has three main usages:
Use the live search bar located at the top of the home page to find items or nearby recycling centers. When a successful item search is conducted, you will be brought to the categories page with the desired item highlighted and the correct bin labeled. A successful recycling center search will bring you down to the map page where you will be able to see the center you search along with any relevant details.
Scroll down to the middle of the page to browse by category. On PC, you can simply hover your mouse over one of the category boxes to reveal the items that fall within the category. On mobile, you will need to tap the category box to find out more about its contents. Once you are inside the category box, you can select one (or more) of the four filters lining the top of the box to pare down the current set of items to be only the items that would belong in the category selected. You may also click the small “i” at the bottom right of the box to learn more about that specific category.
You can use the map element (located in the third section of the homepage) to browse various recycling centers nearby, if you do not already have one in mind. Each center should appear with a map marker icon that, when clicked, displays more information about the center.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

**5/4/2017**: First version of app completed:
* City: Claremont (only 1 city)
* Search functional
* Categories and item overlays functional
* Map integrated, recycling centers of Claremont plotted
* Use current location included
* Informational overlays functional for all categories
* Item overlays functional

## Known Issues

* Slideout issues in general
* One of the cardboard slideouts has no text
* Ghost text from slideout can be seen in page on load, changes size of screen to the right and looks completely jarbled
* Admin updates to database should persist, no database being hosted beyond individual sessions right now
* Need to get a domain and host webpage somewhere
* Need more recycling centers in the database, only one searchable center currently
* Be able to press enter when searching instead of only being able to click on search items
* Refactor code to prefer IDs over classes

## Credits

* Idea: Louis Spanias, Hixon Center for Sustainable Environmental Design
* Development: Edward Carroll, Abigail Schantz, Pratyush Kapur, Evan Yates
* Assistance: Yekaterina Kharitonova, Angela Zhou

## License

MIT License

Copyright (c) [2017] [Edward Carroll, Pratyush Kapur, Abigail Schantz, Evan Yates]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

