# -*- encoding : utf-8 -*-
class ZaprosPdf < Prawn::Document
  def initialize( zapros)
    @zapros = zapros
    super(top_margin: 20)
    show
  end

  def show
  	font_families.update(
    "Verdana" => {
      :bold => "prawn_fonts/verdanab.ttf",
      :italic => "prawn_fonts/verdanai.ttf",
      :normal  => "prawn_fonts/verdana.ttf" })
    
    font "Verdana", :size => 11
    
    image "app/assets/images/logo.png", :width => 75, :height => 40
    text "#{Time.now}", :size => 7
    
    move_down 15
    text "Запрос на определение стоимости финансовой гарантии", :align => :center, :style => :bold
    move_down 15
    #################################################
    formatted_text [ { :text =>"Наименование товара: ", :style => [:bold]},
                     { :text => "#{@zapros.naim}",:styles => [:underline]},
                     ]
    move_down 5

    #################################################
    formatted_text [ { :text =>"Код товара: ", :style => :bold},
                     { :text => "#{@zapros.code}",:styles => [:underline]},
                     ]
    move_down 5

    #################################################
    formatted_text [ { :text =>"Таможенный режим: ", :style => :bold},
                     { :text => "#{@zapros.tamrez}",:styles => [:underline]},
                     ]
    move_down 5

    #################################################
    formatted_text [ { :text =>"Вид транспорта: ", :style => :bold},
                     { :text => "#{@zapros.typetran}",:styles => [:underline]},
                     ]
    move_down 5

    #################################################
    formatted_text [ { :text =>"Количество товара:   ", :style => :bold},
                     { :text => "#{@zapros.koltov}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Основные еденицы имзерения:   ", :style => :bold},
                     { :text => "#{@zapros.base_ed}",:styles => [:underline]},
                     ]
    move_down 5

    #################################################
    formatted_text [ { :text =>"Дополнительные еденицы измерения: ", :style => :bold},
                     { :text => "#{@zapros.dop_ed}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Стоимость товара:   ", :style => :bold},
                     { :text => "#{@zapros.stoim}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"За еденицу товара:   ", :style => :bold},
                     { :text => "#{@zapros.ed}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Всего:   ", :style => :bold},
                     { :text => "#{@zapros.total}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Маршрут движения (таможенный орган отправления Украины - таможенный орган назначения Украины):   ", :style => :bold},
                     { :text => "#{@zapros.path_ryhy}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Частота перевозок и объемы(в месяц, в квартал):   ", :style => :bold},
                     { :text => "#{@zapros.chastota}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Контактное лицо:   ", :style => :bold},
                     { :text => "#{@zapros.fio}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Должность:   ", :style => :bold},
                     { :text => "#{@zapros.rank}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Телефон:   ", :style => :bold},
                     { :text => "#{@zapros.phone}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Email:   ", :style => :bold},
                     { :text => "#{@zapros.email}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Файл вложения:   ", :style => :bold},
                     { :text => "#{@zapros.att_file_name}",:styles => [:underline]},
                     ]
    move_down 5
    #################################################
    formatted_text [ { :text =>"Дополнительная информация, коментарии:   ", :style => :bold},
                     { :text => "#{@zapros.dopinfo}",:styles => [:underline]},
                     ]
    move_down 5
  end

end