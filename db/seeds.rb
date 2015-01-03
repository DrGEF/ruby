Product.delete_all
Product.create!(
           title: 'Заголовок',
           description:
           %{<p>
                Описание товара... Длинное длинное...
          </p>},
           image_url: 'ruby.jpg',
           price: 99.99
)