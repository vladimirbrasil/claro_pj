#!/bin/env ruby
# encoding: utf-8

class LeitorDeArquivos
  def initialize(folder)
    files = []
    Dir.glob("#{folder}/*.txt") do |txt_file|
      # do work on files ending in .rb in the desired directory
      files << IO.read(txt_file).force_encoding("ISO-8859-1").encode("utf-8", replace: nil).to_s

    end

    # É necessário ler dois ou mais arquivos
    @data = files.join("\n")
  end

  def output
		@data.to_s
  end
end
