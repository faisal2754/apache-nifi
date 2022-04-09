-- CreateTable
CREATE TABLE "publisher" (
    "publisher_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,

    CONSTRAINT "publisher_pkey" PRIMARY KEY ("publisher_id")
);

-- CreateTable
CREATE TABLE "author" (
    "author_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    "publisher_id" INTEGER NOT NULL,

    CONSTRAINT "author_pkey" PRIMARY KEY ("author_id")
);

-- CreateTable
CREATE TABLE "book" (
    "book_id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "author_id" INTEGER NOT NULL,

    CONSTRAINT "book_pkey" PRIMARY KEY ("book_id")
);

-- AddForeignKey
ALTER TABLE "author" ADD CONSTRAINT "author_publisher_id_fkey" FOREIGN KEY ("publisher_id") REFERENCES "publisher"("publisher_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "book" ADD CONSTRAINT "book_author_id_fkey" FOREIGN KEY ("author_id") REFERENCES "author"("author_id") ON DELETE RESTRICT ON UPDATE CASCADE;
