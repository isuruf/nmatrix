#--
# = NMatrix
#
# A linear algebra library for scientific computation in Ruby.
# NMatrix is part of SciRuby.
#
# NMatrix was originally inspired by and derived from NArray, by
# Masahiro Tanaka: http://narray.rubyforge.org
#
# == Copyright Information
#
# SciRuby is Copyright (c) 2010 - 2014, Ruby Science Foundation
# NMatrix is Copyright (c) 2012 - 2014, John Woods and the Ruby Science Foundation
#
# Please see LICENSE.txt for additional copyright notices.
#
# == Contributing
#
# By contributing source code to SciRuby, you agree to be bound by
# our Contributor Agreement:
#
# * https://github.com/SciRuby/sciruby/wiki/Contributor-Agreement
#
# == fftw.rb
#
# ruby file for the nmatrix-fftw gem. Loads the C extension and defines
# nice ruby interfaces for FFTW functions.
#++

require 'nmatrix/nmatrix.rb'
require "nmatrix_fftw.so"

class NMatrix
  module FFTW

    # Human friendly DSL for computing FFTs
    def self.compute &block
      
    end

    class Plan
      # Create a plan for DFT
      def initialize shape, opts={}
        opts = {
          dim: 1,
          flag: :estimate,
          direction: :forward,
          type: :c2c
        }.merge(opts)
        shape  = [shape] if shape.is_a?(Fixnum)
        input  = NMatrix.new(shape, dtype: :complex128, stype: :dense)
        output = NMatrix.new(shape, dtype: :complex128, stype: :dense)

        _create_plan_
        # _create_plan_(shape, input, output, 
        #   opts[:dim], opts[:direction], opts[:flag], opts[:type])
      end

      # Set input for the DFT
      def set_input ip
        
      end

      # Execute DFT with the set plan
      def execute
        
      end

      # Destroy the plan
      def destroy
        
      end

      def input
        
      end

      def output
        
      end
    end
  end
end

