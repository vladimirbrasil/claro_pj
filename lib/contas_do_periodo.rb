#!/bin/env ruby
# encoding: utf-8
require "leitor_de_arquivos"

class ContasDoPeriodo
	attr_reader :data, :periodo, :vencimento

	def initialize(file)
		@data = LeitorDeArquivos.new(file).output
		@periodo = /Período de Referência: (.*)/.match(@data)[1]
		@vencimento = /Data de Vencimento: (\d{1,2}\/\d{1,2}\/\d{2,4})/.match(@data)[1]
	end

end
