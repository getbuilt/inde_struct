require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

gem "minitest"
require "minitest/autorun"
require "inde_struct"
require "securerandom"


# randomize case of String
def rand_case(x)
  x.gsub(/./){|y| [y,y.swapcase][rand(2)]}
end

class TestIndeStruct < MiniTest::Unit::TestCase
  def setup
    @files = File.join(File.expand_path(File.dirname(__FILE__)), "files")
  end

  def text_ible_hash
    act = IndeStruct.ible({awesome: 'dude'})
    assert_kind_of(IndeStruct::Parser::OpenStructAnyCase, act)
  end

  def test_ible_string
    act = IndeStruct.ible("awesome: dude")
    assert_kind_of(IndeStruct::Parser::OpenStructAnyCase, act)
  end

  def test_ible_filepath
    filepath = File.join @files, 'config.yml'
    assert File.exist? filepath
    act = IndeStruct.ible(filepath)
    assert_kind_of(IndeStruct::Parser::OpenStructAnyCase, act)
  end

  def test_ible_file
    filepath = File.join(@files, 'config.yml')
    assert File.exist? filepath
    file = File.open(filepath)
    assert_kind_of(File, file)
    act = IndeStruct.ible(file)
    assert_kind_of(IndeStruct::Parser::OpenStructAnyCase, act)
    file.close
  end

  def test_ible_accessor_case_sensitivity
    key = SecureRandom.urlsafe_base64(rand(16) + 1)
    exp = 'awesome'
    config = IndeStruct.ible({key => exp})
    act = config.send(rand_case(key))
    assert_equal(exp, act)
  end
end
