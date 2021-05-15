# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
              { name: 'Leonardo Ribas', email: 'leonas.ribas@gmail.com', password: '123456', phone: '11912341234' },
              { name: 'Lucas Gonçalves', email: 'lucas.goncalves@gmail.com', password: '123456', phone: '61912341234' },
              { name: 'Alexandre Victor', email: 'alexandre.victor@gmail.com', password: '123456',
                phone: '61943214321' }
            ])

Book.create!([
               { user_id: 1, title: 'Dom Casmurro', author: 'Machado de Assis', rewardable: true,
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 1, title: 'Macunaíma', author: 'Mário de Andrade', rewardable: true,
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 1, title: 'O Cortiço', author: 'Aluísio de Azevedo', rewardable: false },

               { user_id: 2, title: 'Vidas Secas', author: 'Graciliano Ramos', rewardable: true,
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 2, title: 'Triste Fim de Policarpo Quaresma', author: 'Lima Barreto', rewardable: true,
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 2, title: 'O Quinze', author: 'Rachel de Queiroz', rewardable: false },

               { user_id: 3, title: 'Grande Sertão: Veredas', author: 'Guimarães Rosa', rewardable: true,
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 3, title: 'A Pedra do Reino', author: 'Ariano Suassuna', rewardable: true,
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 3, title: 'O Guarani', author: 'José de Alencar', rewardable: false }
             ])

BorrowRequest.create!([
                        { user_id: 1, book_id: 4 },
                        { user_id: 1, book_id: 7 },
                        { user_id: 2, book_id: 1 },
                        { user_id: 2, book_id: 8 },
                        { user_id: 3, book_id: 2 },
                        { user_id: 3, book_id: 5 }
                      ])

Genre.create!([
                { name: 'Romance' },
                { name: 'Drama' },
                { name: 'Clássicos' },
                { name: 'Conto' },
                { name: 'Crônica' },
                { name: 'Poesia' },
                { name: 'Aventura' }
              ])

BookGenre.create!([
                    { book_id: 1, genre_id: 1 },
                    { book_id: 1, genre_id: 2 },

                    { book_id: 2, genre_id: 2 },
                    { book_id: 2, genre_id: 3 },

                    { book_id: 3, genre_id: 4 },
                    { book_id: 3, genre_id: 5 },

                    { book_id: 4, genre_id: 6 },
                    { book_id: 4, genre_id: 7 },

                    { book_id: 5, genre_id: 1 },
                    { book_id: 5, genre_id: 7 },

                    { book_id: 6, genre_id: 2 },
                    { book_id: 6, genre_id: 6 },

                    { book_id: 7, genre_id: 3 },
                    { book_id: 7, genre_id: 5 },

                    { book_id: 8, genre_id: 1 },
                    { book_id: 8, genre_id: 3 },

                    { book_id: 9, genre_id: 1 },
                    { book_id: 9, genre_id: 4 }
                  ])
