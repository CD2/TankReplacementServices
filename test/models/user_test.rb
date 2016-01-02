require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(name: 'Example User', email: 'user@example.com', password: 'foobar123', password_confirmation: 'foobar123')
	end

	test 'should be valid' do
		assert @user.valid?
	end

	test 'name should be present' do
		@user.name = ' '
		assert_not @user.valid?
	end

	test 'email should be present' do
		@user.email = ' '
		assert_not @user.valid?
	end

	test 'name should not be too long' do
		@user.name = 'a' * 51
		assert_not @user.valid?
	end

	test 'email should not be too long' do
		@user.email = 'a' * 250 + '@a.com'
		assert_not @user.valid?
	end

	test 'email validation should accept valid addresses' do
		valid_addresses = %w[user@example.com User@FOO.COM a_user@foo.bar.com
			first.last@foo.co.uk a_b@cd.ef]
			valid_addresses.each do |va|
				@user.email = va
				assert @user.valid?, "#{va} should be valid"
			end
		end

		test 'email validation should reject invalid addresses' do
			invalid_addresses = %w[user@example,com user_at_foo.org user@example. foo@bar_baz.cam foo@bar+baz.com]
			invalid_addresses.each do |iva|
				@user.email = iva
				assert_not @user.valid?, "#{iva.inspect} should be invalid"
			end
		end

		test 'email addresses should be unique' do
			duplicate_user = @user.dup
			duplicate_user.email = @user.email.upcase
			@user.save
			assert_not duplicate_user.valid?
		end

		test 'password should be present' do
			@user.password = @user.password_confirmation = ' '*5
			assert_not @user.valid?
		end

		test 'password should have a mimimum length' do
			@user.password = @user.password_confirmation = ' '*4
			assert_not @user.valid?
		end

		test 'passwords should match' do
			@user.password = 'foofoo'
			@user.password_confirmation = 'barbar'
			assert_not @user.valid?
		end

		test 'authenticated? should return false for a user with nul digest' do
			assert_not @user.authenticated?('')
		end

	end
