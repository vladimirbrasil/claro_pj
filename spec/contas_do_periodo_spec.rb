require "contas_do_periodo"

describe ContasDoPeriodo do

	# file1_content = File.read(File.expand_path '../../inputs/input1.txt', __FILE__)
  let(:contas_do_periodo) { ContasDoPeriodo.new("spec/input_cabecalho.txt") }

  # let(:result) {[["title","surname","firstname"],["title2","surname2","firstname2"]] }

  # it "should read in the csv" do
  #   CSV.should_receive(:read).
  #     with("filename", :row_sep => "\r", :col_sep => "\t")
  #   contas_do_periodo.import("filename")
  # end

  # it "tem que conter o valor 'SINDICATO'" do
    specify { contas_do_periodo.data.should include("SINDICATO") }
  # end

  describe "periodo" do
  	specify { contas_do_periodo.periodo.should eq("07/11/2011 a 06/12/2011") } 
	end
  describe "vencimento" do
  	specify { contas_do_periodo.vencimento.should eq("24/12/2011") } 
	end
	

end