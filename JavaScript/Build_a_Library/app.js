class Media{
  constructor(title){
    this._title = title;
    this._isCheckedOut = false;
    this._ratings = [];
  }

  get isCheckedOut(){
    return this._isCheckedOut;
  }

  get ratings(){
    return this._ratings;
  }

  set isCheckedOut(newValue){
    this._isCheckedOut = newValue;
  }

  toggleCheckOutStatus(){
    if (this._isCheckedOut === true){
      this._isCheckedOut = false;
    }else{
      this._isCheckedOut = true;
    }
  }

  getAverageRating(){
    let ratingsSum = this.ratings.reduce((currentSum, rating) => currentSum + rating, 0)/this._ratings.length;
     return ratingsSum;
  }

  addRating(newRating){
    this._ratings.push(newRating);
  }
}

class Book extends Media{
  constructor(author, title, pages){
    super(title);
    this._author = author;
    this._pages = pages;
  }

  get author(){
    return this._author;
  }

  get pages(){
    return this._pages;
  }
}
