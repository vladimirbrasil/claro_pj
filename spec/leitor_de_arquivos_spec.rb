#!/bin/env ruby
# encoding: utf-8

require "leitor_de_arquivos"

describe LeitorDeArquivos do
	let(:leitor_de_arquivos) { LeitorDeArquivos.new("spec/arquivos_do_periodo") }

	specify { leitor_de_arquivos.output.should include("Tel;Tipo;Data;Hora;") }
	specify { leitor_de_arquivos.output.should include("SINDICATO") }

end