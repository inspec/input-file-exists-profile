# encoding: utf-8
# copyright: 2017, Michael Hedgpeth

title 'Ensure that the file exists'

test_file = attribute('file', default: '/default/will/never/exist/thats/the.point', description: 'the file that should exist by this inspec test')

control 'test-1.0-file-exists' do
  impact 1.0
  title "Ensure that #{test_file} exists"
  desc 'Ensures that the file exists to test out attributes'
  describe file(test_file) do
    it { should exist }
  end
end
