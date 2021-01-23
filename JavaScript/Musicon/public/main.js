const context = {
  title: 'Welcome to Musicon',
  body: 'Musicon is a budding musical storefront with a mission to share the joy of music. These magnificent auditory tools are designed with musical creators, like you, in mind. Hobbyists, beginners, and experts alike can appreciate the resplendent sounds supplied by each and every instrument we carry. Join us in delivering the euphoric vibrations of melodia to the citizens of the world!',
  instruments: [
    {
      image: 'https://s3.amazonaws.com/codecademy-content/courses/learn-handlebars/musicon/electronic-keyboard.png',
      name: 'Electronic Keyboard',
      description: 'A piano welcomed to the 21th century. Pianists celebrate the compact form factor and the diversity of synthesized rhythms all in one masterful musical machine.',
      price: '$1,999.00',
      sale: '$1,699.89'
    },
    {
      image: 'https://s3.amazonaws.com/codecademy-content/courses/learn-handlebars/musicon/electric-guitar.png',
      name: 'Electric Guitar',
      description: 'Join the legends of the \'50s and \'60s when the marriage of guitar and electricity created the most influential instrument of a generation. Note: picks sold separately.',
      price: '$599.99'
    },
    {
      image: 'https://s3.amazonaws.com/codecademy-content/courses/learn-handlebars/musicon/bass-guitar.png',
      name: 'Bass Guitar',
      description: 'Experience the embodiment of funkadelic frequencies that is the bass guitar. Let the deep low notes of the bass guitar resonate with heartbeats everywhere.',
      price: '$624.99'
    },
    {
      image: 'https://s3.amazonaws.com/codecademy-content/courses/learn-handlebars/musicon/drum-kit.png',
      name: 'Drum Kit',
      description: 'Ever thought, "one instrument isn\'t enough?" Find an answer in the drum kit. Coordinate a collections of drums and cymbals to dictate the rhythm of musical masterpiece.',
      price: '$649.00',
      sale: '$349.00'
    },
    {
      image: 'https://s3.amazonaws.com/codecademy-content/courses/learn-handlebars/musicon/violin.png',
      name: 'Violin',
      description: 'A versatile that is suited for any and all occasions. Those wearing tuxedos can strum together a classic. Others who prefer overalls can call it a fiddle and play some folk songs.',
      price: '$245.00'
    },
    {
      image: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/9044/9044571_sa.jpg;maxHeight=640;maxWidth=550',
      name: 'Bongos',
      description: 'Bongos from Best Buy. Bongos are fun to play because it is like playing drums, but simpler.',
      price: '$90.00',
      sale: '$89.99'
    }
  ]
};
/*Notes */
/* Step 1: Select HTML/DOM element that delivers Handlebars template by id */
const templateElement = document.getElementById("templateHB");

/*Step 2: */
//Next we access the specific html element whose content/html markup that we want to use as a template source
const templateSource = templateElement.innerHTML;

/*Step 3: */
//Handlebars.compile() is a built-in method from Handlebars that returns a compiled template(using the templateSource as an argument):
const template = Handlebars.compile(templateSource);

/* Steps 4: */
//This template function will accept an argument(context) and it uses the properties of the object to fill in the Handlebars template.
const compiledHtml = template(context);

/* Step 5: Select HTML element to edit */
document.getElementById('information').innerHTML = compiledHtml;
