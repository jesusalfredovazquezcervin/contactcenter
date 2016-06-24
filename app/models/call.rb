class Call < ActiveRecord::Base
  belongs_to :company
  belongs_to :campaign
  belongs_to :user

  STATUS = %w[no_interesado llamar_despues no_se_encontro numero_incorrecto cotizacion_en_proceso]
end
