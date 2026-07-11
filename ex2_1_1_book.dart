class Book{
    String? title;
    String? author;
    double? price;

    Book(this.title, this.author, this.price);

    void showDetail(){
        print("Title: $title");
        print("Author: $author");
        print("Price: $price");
        print("-------------------------");
    }
}

void main(){
        Book book1 = Book("อย่าออกมาเดินตอนกลางคืน", "Yokomizo Seishi ", 255.00);
        Book book2 = Book("The Great Gatsby", "F. Scott Fitzgerald", 300.00);

        book1.showDetail();
        book2.showDetail();
    }