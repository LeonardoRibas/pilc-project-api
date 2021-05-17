# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
              { name: 'Leonardo Ribas', email: 'leo.ribas@gmail.com', password: '123456', phone: '11912341234' },
              { name: 'Lucas Gonçalves', email: 'lucas.goncalves@gmail.com', password: '123456', phone: '61912341234' },
              { name: 'Alexandre Victor', email: 'alexandre.victor@gmail.com', password: '123456',
                phone: '61943214321' }
            ])

Book.create!([
               { user_id: 1, title: 'Dom Casmurro', author: 'Machado de Assis', rewardable: true, cover: 'https://cdn.emtempo.com.br/img/inline/200000/dom-casmurro_00205462_2_202005271333.jpg',
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 1, title: 'Macunaíma', author: 'Mário de Andrade', rewardable: true, cover: 'https://a-static.mlcdn.com.br/618x463/livro-macunaima/livrosnainternet/134144-134148/24dbbfdf2150be18d7aa4c3d9b459528.jpg',
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 1, title: 'O Cortiço', author: 'Aluísio de Azevedo', rewardable: false, cover: 'https://a-static.mlcdn.com.br/618x463/o-cortico-aluisio-de-azevedo-on-line/onlineeditora/23148/39caae342a060e859985987492daf451.jpg' },

               { user_id: 2, title: 'Vidas Secas', author: 'Graciliano Ramos', rewardable: true, cover: 'https://images-na.ssl-images-amazon.com/images/I/51AD9NHWiyL._SX383_BO1,204,203,200_.jpg',
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 2, title: 'Triste Fim de Policarpo Quaresma', author: 'Lima Barreto', rewardable: true, cover: 'https://images-na.ssl-images-amazon.com/images/I/91zVkPV91OL.jpg',
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 2, title: 'O Quinze', author: 'Rachel de Queiroz', rewardable: false, cover: 'https://images-na.ssl-images-amazon.com/images/I/81jNwxp7OwL.jpg' },

               { user_id: 3, title: 'Grande Sertão: Veredas', author: 'Guimarães Rosa', rewardable: true, cover: 'https://images-na.ssl-images-amazon.com/images/I/81GkdTtpA2L.__BG0,0,0,0_FMpng_AC_UL600_SR453,600_.jpg',
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 3, title: 'A Pedra do Reino', author: 'Ariano Suassuna', rewardable: true, cover: 'https://armonte.files.wordpress.com/2010/08/pedra-do-reino.jpg',
                 first_question: 'Lorem ipsum dolor sit amet?',
                 second_question: 'Sed ut perspiciatis unde omnis?',
                 third_question: 'At vero eos et accusamus et iusto odio' },

               { user_id: 3, title: 'O Guarani', author: 'José de Alencar', rewardable: false, cover:'https://images-na.ssl-images-amazon.com/images/I/91-16juFmnL.jpg' },
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
