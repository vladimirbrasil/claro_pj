#!/bin/env ruby
# encoding: utf-8
require "leitor_de_arquivos"

class ContasDoPeriodo
	attr_reader :data, :periodo, :vencimento, :cabecalho, :csv

	def initialize(folder)
		@data = LeitorDeArquivos.new(folder).output
		/(?<cabecalho>SINDICATO.*)Tel;Tipo;Data;Hora;.*/m =~ @data
		/.*(?<csv>Tel;Tipo;Data;Hora;.*)/m =~ @data
		@cabecalho, @csv = cabecalho, csv
		if @cabecalho
			/Período de Referência: (?<periodo>.*)\r/ =~ @cabecalho
			/Data de Vencimento: (?<vencimento>\d{1,2}\/\d{1,2}\/\d{2,4})/ =~ @cabecalho
			@periodo = periodo
			@vencimento = vencimento
		end
	end

end
