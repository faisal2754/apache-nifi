const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function main() {
  const publisher1 = await prisma.publisher.upsert({
    where: { publisher_id: 1 },
    update: {},
    create: {
      name: "Jonathan's Press",
      address: "24 Company Street",
      authors: {
        create: [
          {
            name: "Ben",
            age: 29,
            books: {
              createMany: {
                data: [
                  { title: "Charlie & Choc Factory", genre: "Luck" },
                  { title: "Kube 4 Noobs", genre: "Tech" },
                ],
              },
            },
          },
          {
            name: "Bob",
            age: 23,
            books: {
              createMany: {
                data: [
                  { title: "Advanced Rust Programming", genre: "Children" },
                  { title: "ML in C", genre: "Fantasy" },
                ],
              },
            },
          },
          {
            name: "Bill",
            age: 63,
            books: {
              createMany: {
                data: [
                  { title: "Recipes", genre: "Food" },
                  { title: "Linear Algebra", genre: "Pain" },
                ],
              },
            },
          },
        ],
      },
    },
  });

  const publisher2 = await prisma.publisher.upsert({
    where: { publisher_id: 2 },
    update: {},
    create: {
      name: "Penguin Books",
      address: "25 Company Street",
      authors: {
        create: [
          {
            name: "Peter",
            age: 83,
            books: {
              createMany: {
                data: [
                  { title: "Farming Fruits", genre: "Farming" },
                  { title: "Cardio for the Elderly", genre: "Exercise" },
                ],
              },
            },
          },
          {
            name: "Pam",
            age: 12,
            books: {
              createMany: {
                data: [
                  { title: "How to colour", genre: "Children" },
                  { title: "Intro to Hadamard Gates", genre: "Quantum" },
                ],
              },
            },
          },
          {
            name: "Parker",
            age: 36,
            books: {
              createMany: {
                data: [
                  { title: "Spiders", genre: "Food" },
                  { title: "How to make Friends", genre: "Pain" },
                ],
              },
            },
          },
        ],
      },
    },
  });
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
