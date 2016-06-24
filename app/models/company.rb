class Company < ActiveRecord::Base
  has_one :schedule
  has_one :contact
  has_one :address
  validates :tradeName, :rfc, :employees, :comercialBusiness,
            presence: true
  validates :businessName,
            presence: true,
            uniqueness: {scope: :rfc}

  validates :rfc, uniqueness:true

  before_save :uppercase_rfc

  def uppercase_rfc
    rfc.upcase!
  end

  ORIGIN = %w[internet catalogo publicidad_exterior recomendacion periodico revista]
  BUSINESS =%w[Farmacia Papelería Supermercado Lavandería Restaurante Tintorería Autolavado Taller_Mecánico Mueblería Fundidoras]


end
