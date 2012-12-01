require 'pebbles-php_cond'
include Pebbles

describe Pebbles::PhpCond do
  it 'expr' do
    PhpCond::bool(0).should be false
    PhpCond::bool(0.0).should be false
    PhpCond::bool('').should be false
    PhpCond::bool([]).should be false
    PhpCond::bool({}).should be false
    PhpCond::bool(false).should be false
    PhpCond::bool(nil).should be false
    PhpCond::bool("0").should be false

    PhpCond::bool(true).should be true
    PhpCond::bool(1).should be true
    PhpCond::bool("abc").should be true
    PhpCond::bool("0abc").should be true
    PhpCond::bool("0.0").should be true
    PhpCond::bool("01").should be true
  end

  it 'equal_with_true' do
    PhpCond::equal?(true, true ).should be true
    PhpCond::equal?(true, false).should be false
    PhpCond::equal?(true, 1    ).should be true
    PhpCond::equal?(true, 0    ).should be false
    PhpCond::equal?(true, -1   ).should be true
    PhpCond::equal?(true, '1'  ).should be true
    PhpCond::equal?(true, '0'  ).should be false
    PhpCond::equal?(true, '-1' ).should be true
    PhpCond::equal?(true, nil  ).should be false
    PhpCond::equal?(true, []   ).should be false
    PhpCond::equal?(true, 'php').should be true
    PhpCond::equal?(true, ''   ).should be false
  end

  it 'equal_with_false' do
    PhpCond::equal?(false, true ).should be false
    PhpCond::equal?(false, false).should be true
    PhpCond::equal?(false, 1    ).should be false
    PhpCond::equal?(false, 0    ).should be true
    PhpCond::equal?(false, -1   ).should be false
    PhpCond::equal?(false, '1'  ).should be false
    PhpCond::equal?(false, '0'  ).should be true
    PhpCond::equal?(false, '-1' ).should be false
    PhpCond::equal?(false, nil  ).should be true
    PhpCond::equal?(false, []   ).should be true
    PhpCond::equal?(false, 'php').should be false
    PhpCond::equal?(false, ''   ).should be true
  end

  it 'equal_with_1' do
    PhpCond::equal?(1, true ).should be true
    PhpCond::equal?(1, false).should be false
    PhpCond::equal?(1, 1    ).should be true
    PhpCond::equal?(1, 0    ).should be false
    PhpCond::equal?(1, -1   ).should be false
    PhpCond::equal?(1, '1'  ).should be true
    PhpCond::equal?(1, '0'  ).should be false
    PhpCond::equal?(1, '-1' ).should be false
    PhpCond::equal?(1, nil  ).should be false
    PhpCond::equal?(1, []   ).should be false
    PhpCond::equal?(1, 'php').should be false
    PhpCond::equal?(1, ''   ).should be false
  end

  it 'equal_with_0' do
    PhpCond::equal?(0, true ).should be false
    PhpCond::equal?(0, false).should be true
    PhpCond::equal?(0, 1    ).should be false
    PhpCond::equal?(0, 0    ).should be true
    PhpCond::equal?(0, -1   ).should be false
    PhpCond::equal?(0, '1'  ).should be false
    PhpCond::equal?(0, '0'  ).should be true
    PhpCond::equal?(0, '-1' ).should be false
    PhpCond::equal?(0, nil  ).should be true
    PhpCond::equal?(0, []   ).should be false
    PhpCond::equal?(0, 'php').should be true
    PhpCond::equal?(0, ''   ).should be true
  end

  it 'equal_with_-1' do
    PhpCond::equal?(-1, true ).should be true
    PhpCond::equal?(-1, false).should be false
    PhpCond::equal?(-1, 1    ).should be false
    PhpCond::equal?(-1, 0    ).should be false
    PhpCond::equal?(-1, -1   ).should be true
    PhpCond::equal?(-1, '1'  ).should be false
    PhpCond::equal?(-1, '0'  ).should be false
    PhpCond::equal?(-1, '-1' ).should be true
    PhpCond::equal?(-1, nil  ).should be false
    PhpCond::equal?(-1, []   ).should be false
    PhpCond::equal?(-1, 'php').should be false
    PhpCond::equal?(-1, ''   ).should be false
  end

  it 'equal_with_string_1' do
    PhpCond::equal?('1', true ).should be true
    PhpCond::equal?('1', false).should be false
    PhpCond::equal?('1', 1    ).should be true
    PhpCond::equal?('1', 0    ).should be false
    PhpCond::equal?('1', -1   ).should be false
    PhpCond::equal?('1', '1'  ).should be true
    PhpCond::equal?('1', '0'  ).should be false
    PhpCond::equal?('1', '-1' ).should be false
    PhpCond::equal?('1', nil  ).should be false
    PhpCond::equal?('1', []   ).should be false
    PhpCond::equal?('1', 'php').should be false
    PhpCond::equal?('1', ''   ).should be false
  end

  it 'equal_with_string_0' do
    PhpCond::equal?('0', true ).should be false
    PhpCond::equal?('0', false).should be true
    PhpCond::equal?('0', 1    ).should be false
    PhpCond::equal?('0', 0    ).should be true
    PhpCond::equal?('0', -1   ).should be false
    PhpCond::equal?('0', '1'  ).should be false
    PhpCond::equal?('0', '0'  ).should be true
    PhpCond::equal?('0', '-1' ).should be false
    PhpCond::equal?('0', nil  ).should be false
    PhpCond::equal?('0', []   ).should be false
    PhpCond::equal?('0', 'php').should be false
    PhpCond::equal?('0', ''   ).should be false
  end

  it 'equal_with_string_-1' do
    PhpCond::equal?('-1', true ).should be true
    PhpCond::equal?('-1', false).should be false
    PhpCond::equal?('-1', 1    ).should be false
    PhpCond::equal?('-1', 0    ).should be false
    PhpCond::equal?('-1', -1   ).should be true
    PhpCond::equal?('-1', '1'  ).should be false
    PhpCond::equal?('-1', '0'  ).should be false
    PhpCond::equal?('-1', '-1' ).should be true
    PhpCond::equal?('-1', nil  ).should be false
    PhpCond::equal?('-1', []   ).should be false
    PhpCond::equal?('-1', 'php').should be false
    PhpCond::equal?('-1', ''   ).should be false
  end

  it 'equal_with_nil' do
    PhpCond::equal?(nil, true ).should be false
    PhpCond::equal?(nil, false).should be true
    PhpCond::equal?(nil, 1    ).should be false
    PhpCond::equal?(nil, 0    ).should be true
    PhpCond::equal?(nil, -1   ).should be false
    PhpCond::equal?(nil, '1'  ).should be false
    PhpCond::equal?(nil, '0'  ).should be false
    PhpCond::equal?(nil, '-1' ).should be false
    PhpCond::equal?(nil, nil  ).should be true
    PhpCond::equal?(nil, []   ).should be true
    PhpCond::equal?(nil, 'php').should be false
    PhpCond::equal?(nil, ''   ).should be true
  end

  it 'equal_with_empty_array' do
    PhpCond::equal?([], true ).should be false
    PhpCond::equal?([], false).should be true
    PhpCond::equal?([], 1    ).should be false
    PhpCond::equal?([], 0    ).should be false
    PhpCond::equal?([], -1   ).should be false
    PhpCond::equal?([], '1'  ).should be false
    PhpCond::equal?([], '0'  ).should be false
    PhpCond::equal?([], '-1' ).should be false
    PhpCond::equal?([], nil  ).should be true
    PhpCond::equal?([], []   ).should be true
    PhpCond::equal?([], 'php').should be false
    PhpCond::equal?([], ''   ).should be false
  end

  it 'equal_with_string' do
    PhpCond::equal?('php', true ).should be true
    PhpCond::equal?('php', false).should be false
    PhpCond::equal?('php', 1    ).should be false
    PhpCond::equal?('php', 0    ).should be true
    PhpCond::equal?('php', -1   ).should be false
    PhpCond::equal?('php', '1'  ).should be false
    PhpCond::equal?('php', '0'  ).should be false
    PhpCond::equal?('php', '-1' ).should be false
    PhpCond::equal?('php', nil  ).should be false
    PhpCond::equal?('php', []   ).should be false
    PhpCond::equal?('php', 'php').should be true
    PhpCond::equal?('php', ''   ).should be false
  end

  it 'equal_with_empty_string' do
    PhpCond::equal?('', true ).should be false
    PhpCond::equal?('', false).should be true
    PhpCond::equal?('', 1    ).should be false
    PhpCond::equal?('', 0    ).should be true
    PhpCond::equal?('', -1   ).should be false
    PhpCond::equal?('', '1'  ).should be false
    PhpCond::equal?('', '0'  ).should be false
    PhpCond::equal?('', '-1' ).should be false
    PhpCond::equal?('', nil  ).should be true
    PhpCond::equal?('', []   ).should be false
    PhpCond::equal?('', 'php').should be false
    PhpCond::equal?('', ''   ).should be true
  end

  it 'equal_with_others' do
    PhpCond::equal?([], {}).should be true
    PhpCond::equal?([1], true).should be true
    PhpCond::equal?(1, 1.0).should be true
    PhpCond::equal?([1], [2]).should be false
    PhpCond::equal?([3], [3]).should be true

  end

  it 'identical' do
    PhpCond::identical?(nil, nil).should be true
    PhpCond::identical?(false, nil).should be false
    PhpCond::identical?('', 0).should be false
  end

end 
