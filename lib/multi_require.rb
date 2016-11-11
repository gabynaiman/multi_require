module MultiRequire

  extend self

  def require_pattern(pattern)
    Dir[pattern].sort.each { |f| require f if File.file? f }
    true
  end

  def require_relative_pattern(pattern)
    source_path = File.dirname caller.first.split(':').first
    require_pattern File.join(source_path, pattern)
    true
  end

end