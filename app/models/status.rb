class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '新品、未使用' },
    { id: 3, name: '目立った汚れなし' },
    { id: 4, name: 'やや傷、汚れあり' }
  ]
end
