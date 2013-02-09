#!/bin/env ruby
# encoding: utf-8

require "contas_do_periodo"

describe ContasDoPeriodo do

  let(:contas_do_periodo) { ContasDoPeriodo.new("spec/arquivos_do_periodo") }

  # let(:result) {[["title","surname","firstname"],["title2","surname2","firstname2"]] }

  # it "should read in the csv" do
  #   CSV.should_receive(:read).
  #     with("filename", :row_sep => "\r", :col_sep => ";")
  #   contas_do_periodo.import("filename")
  # end

  specify { contas_do_periodo.data.should include("Tel;Tipo;Data;Hora;") }

  describe "cabecalho" do
  	specify { contas_do_periodo.cabecalho.should include("SINDICATO") } 

    describe "periodo" do
      specify { contas_do_periodo.periodo.should eq("07/11/2011 a 06/12/2011") } 
    end

    describe "vencimento" do
      specify { contas_do_periodo.vencimento.should eq("24/12/2011") } 
    end

	end

  describe "csv" do
  	specify { contas_do_periodo.csv.should include("Tel;Tipo;Data;Hora;") } 

     
	end

	

end