require "lib/fraccion_main.rb"

describe Fraccion do
    before :each do
      @A = Fraccion.new(5, 2)
      @B = Fraccion.new(-8, 7)
      @C = Fraccion.new(5, 4)
    end 

    describe "# Almacenamiento de la fraccion # " do
      it "Se almacena correctamente el numerador" do
        @A.a.should eq(5)
      end

      it "Se almacena correctamente el denominador" do
        @A.b.should eq(2)
      end
    end
    
    describe "# Obtención de la fraccion #" do
      it "Obtiene el numerador" do
        @A.num.should eq(5)
      end

      it "Obtiene el denominador" do
        @A.denom.should eq(2)
      end
    end

    describe "# Operaciones con fracciones # " do
      it "Muestra la fraccion" do
        @A.to_s.should eq("5/2")
      end

      it "Se muestra en coma flotante" do
        @A.to_f.should eq(2.5)
      end

#       it "Comprobar igualdad de fracciones" do
#         result = @A == @B
#         result.should eq(false)	
#       end

      it "Calcula el valor absoluto" do
        @B.abs.to_s.should eq("8/7")
      end

      it "Calcula reciproco" do
        @B.reciproco.to_s.should eq("7/-8")
      end

      it "Calcula el opuesto" do
        result = -@A
        result.to_s.should eq("-5/2")
      end
      
      it "Calcula la suma" do
        result = @A + @C
        result.to_s.should eq("15/4")
      end

      it "Resta de fracciones" do
        result = @A - @C
        result.to_s.should eq("5/4")
      end

      it "Producto de fracciones" do
        result = @A * @C
        result.to_s.should eq("25/8")
      end

      it "Division de fracciones" do
        result = @A / @C
        result.to_s.should eq("2/1")
      end

      it "Calcula el resto" do
        result = @A % @C
        result.to_s.should eq("0/1")
      end

#       it "Fraccion >" do
#         result = @A > @C
#         result.should eq(true)
#       end
# 
#       it "Fraccion <" do
#         result = @C < @A
#         result.should eq(true)
#       end
# 
#       it "Fraccion >=" do
#         result = @A >= @C
#         result.should eq(true)
#       end
# 
#       it "Fraccion <=" do
#         result = @C <= @A
#         result.should eq(true)
#       end
    end
end