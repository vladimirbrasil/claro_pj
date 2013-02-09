#!/bin/env ruby
# encoding: utf-8
require_relative "leitor_de_arquivos"

class ContasDoPeriodo
	attr_reader :data, :periodo, :vencimento, :cabecalho, :csv

	def initialize(folder)
		
		# Leitor de arquivos junta os usualmente dois arquivos 
			# em um único string, pelo método "output"
		@data = LeitorDeArquivos.new(folder).output
		
		# Separa o cabeçalho e os dados csv das contas
			# Ainda depende da ordem dos arquivos, 
			# sendo o cabeçalho presente apenas no primeiro arquivo
		/(?<cabecalho>SINDICATO.*)Tel;Tipo;Data;Hora;.*/m =~ @data
		/.*(?<csv>Tel;Tipo;Data;Hora;.*)/m =~ @data
		@cabecalho, @csv = cabecalho, csv
		
		# Separa alguns dados importantes do cabeçalho, 
			# como período e vencimento das contas
		if @cabecalho
			/Período de Referência: (?<periodo>.*)\r/ =~ @cabecalho
			/Data de Vencimento: (?<vencimento>\d{1,2}\/\d{1,2}\/\d{2,4})/ =~ @cabecalho
			@periodo = periodo
			@vencimento = vencimento
		end

		if @csv
			CSV.parse(@csv) do |row|
  			
			end			
		end

	end

end
