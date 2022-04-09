-- CreateTable
CREATE TABLE "Publisher" (
    "publisher_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,

    CONSTRAINT "Publisher_pkey" PRIMARY KEY ("publisher_id")
);

-- CreateTable
CREATE TABLE "Author" (
    "author_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    "publisher_id" INTEGER NOT NULL,

    CONSTRAINT "Author_pkey" PRIMARY KEY ("author_id")
);

-- CreateTable
CREATE TABLE "Book" (
    "book_id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "author_id" INTEGER NOT NULL,

    CONSTRAINT "Book_pkey" PRIMARY KEY ("book_id")
);

-- AddForeignKey
ALTER TABLE "Author" ADD CONSTRAINT "Author_publisher_id_fkey" FOREIGN KEY ("publisher_id") REFERENCES "Publisher"("publisher_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_author_id_fkey" FOREIGN KEY ("author_id") REFERENCES "Author"("author_id") ON DELETE RESTRICT ON UPDATE CASCADE;
