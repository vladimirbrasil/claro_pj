#!/bin/env ruby
# encoding: utf-8

class LeitorDeArquivos
  def initialize(file)
    # É necessário ler dois ou mais arquivos
    @data = File.read(file).to_s
  end

  def output
		@data.to_s
  end
end
