class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'レディース' },
    { id: 3, name: 'メンズ' },
    { id: 4, name: 'インテリア・小物' },
    { id: 5, name: '電気製品' },
    { id: 6, name: 'スポーツ' }
  ]
end
