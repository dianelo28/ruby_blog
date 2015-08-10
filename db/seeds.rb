20.times do
	Post.create(
		title: FFaker:: HipsterIpsum.sentence(5),
		content: FFaker::HipsterIpsum.sentence(20)
		)
end