require 'ffaker'

100.times do
	User.create(
		name: FFaker::NameBR.name,
		email: FFaker::Internet.email,
		password: '123456',
		genre: [0,1].shuffle.first
	)
end

publishers = Publisher.create!([
	{name: 'Sports'},
	{name: 'Economy'},
	{name: 'Society'},
	{name: 'Entertainment'},
	{name: 'Gossip'},

])

markers = Marker.create!([
	{name: 'Impeachment'},
	{name: 'Car-wash Brazil'}

])

10.times do |i|
	Post.create!(
		user_id: User.all.shuffle.first.id, #ou usuario_id: Usuario.all.order('RAND()').first.id,
		publisher_id: Publisher.all.order('RAND()').first.id,
		title: "Title #{i}",
		caption: "Caption #{i}",
		content: "lorem ipsum",
		publication_date: Time.now,
		status: true
	)
end

User.create!([
	{
		name: 'admin',
		email: 'admin@portal.com',
		password: '123456'
	}
])