class SourceDataController < ApplicationController
 
  def chart
    if session[:user_id]
      @db_cmm = SourceDatum.count(:id)
      @db_cmm_count=@db_cmm.to_s.size
      #db_cmm_first=@db_cmm.to_s.first(1).to_i
      # @ds= db_cmm_first.to_s.ljust(@db_cmm_count.to_i,'0')
      # @ds_cmm= @ds.to_i * 2
      @db_inv = SourceDatum.where(["FLAG= ?", 'INV']).count
      @db_locinv = SourceDatum.where(["FLAG= ?", 'LINV']).count
      @db_match = SourceDatum.where(["FLAG= ?", 'USV']).count
      @db_nonoff = SourceDatum.where(["FLAG= ?", 'USNV']).count
      @db_other = SourceDatum.where(["FLAG = ?", '']).count
      @db_matchgmv = SourceDatum.where(["FLAG= ?", 'GMV']).count
      @db_matchfrv = SourceDatum.where(["FLAG= ?", 'FRV']).count
      @db_matchukv = SourceDatum.where(["FLAG= ?", 'UKV']).count
      @db_nonoffgmv = SourceDatum.where(["FLAG= ?", 'GMNV']).count
      @db_nonoffrnv = SourceDatum.where(["FLAG= ?", 'FRNV']).count
      @db_nonoffuk = SourceDatum.where(["FLAG= ?", 'UKNV']).count


     #@db_inv_count=@db_inv.to_s.size

      # @db_classification = Classification.count(:cat_id)
      # @db_classification_count=@db_classification.to_s.size
      # db_classification_first=@db_classification.to_s.first(1).to_i
      # @ds= db_classification_first.to_s.ljust(@db_classification_count.to_i,'0')
      # @ds_classification= @ds.to_i * 2
      @db_classification = Classification.count(:cat_id)
      @db_classtotal =250000
      @db_classbalance = @db_classtotal-@db_classification

      # @db_factory = Factory.count(:FPKID)
      # @db_factory_count=@db_factory.to_s.size
      # db_factory_first=@db_factory.to_s.first(1).to_i
      # @ds= db_factory_first.to_s.ljust(@db_factory_count.to_i,'0')
      # @ds_factory= @ds.to_i * 2

      @db_factory = Factory.count(:id)
      @db_facttotal = 7000
      @db_factbalance = @db_facttotal-@db_factory
      # @db_factory_count=@db_factory.to_s.size
      # db_factory_first=@db_factory.to_s.first(1).to_i
      # @ds= db_factory_first.to_s.ljust(@db_factory_count.to_i,'0')
      # @ds_factory= @ds.to_i * 2

      @db_exclass = Ex_classification.count(:cat_id)
      @db_extotal = 1000000
      @db_exbalance = @db_extotal-@db_exclass
      # @db_exclass_count=@db_exclass.to_s.size
      # db_exclass_first=@db_exclass.to_s.first(1).to_i
      # @ds= db_exclass_first.to_s.ljust(@db_exclass_count.to_i,'0')
      # @ds_exclass= @ds.to_i * 2
       else
        render 'sessions/login'
      end
    end


  def nsnlist
    if session[:user_id]
      if params[:search]
        @vs = params[:search]
        #search= 19207
         @cmm = initialize_grid(ReferenceDatum ,conditions: ["CAGE_CD_9250 = ? OR NSN = ? OR REF_NBR_3570 = ? OR NAME = ?  ", @vs,@vs,@vs,@vs] , :per_page => 10)  

        else
         @cmm = initialize_grid(ReferenceDatum , :per_page => 10)  
      end
      else
        render 'sessions/login'
    end
  end

  def source
   vars = request.query_parameters
    @type = vars['TYPE']
      if session[:user_id]
          #all values in source data
          if @type =='all'
            if params[:search]
              @vs = params[:search]
              #search= 19207
               @cmm = initialize_grid(SourceDatum ,conditions: ["CAGEC = ? OR NSN = ? OR PART_NUMBER = ? OR NAME = ? ", @vs,@vs,@vs,@vs] , :per_page => 10)

              else
                @cmm = initialize_grid(SourceDatum , :per_page => 10)     
            end
         else
            if params[:search]
              @vs = params[:search]
            #search= 19207
              @cmm = initialize_grid(SourceDatum ,conditions: ["CAGEC = ? OR NSN = ? OR PART_NUMBER = ? OR NAME = ? ",@vs,@vs,@vs,@vs] , :per_page => 10)

            else
              @cmm = initialize_grid(SourceDatum , conditions: ["FLAG = ? ", @type] , :per_page => 10)   
            end
        end
      else
          render 'sessions/login'
      end
  end


   def edit
     if session[:user_id]
      vars = request.query_parameters
      @vid = vars['NSN']
          @count_NSN = ASegment.where(["NSN= ?", @vid])
          if @count_NSN.count == 1  
             @a_seg = ASegment.where(["NSN= ?", @vid])
          else
           
            respond_to do |format|
            format.html { redirect_to root_url, notice: 'This material is not found in A_segments' }
          end
        end
        @nsnmrcxs =Nsnmrcxs.where(["NSN= ?", @vid]) 
        @c_seg =ReferenceDatum.where(["NSN= ?", @vid]) 
        else
        render 'sessions/login'
      end
    end
    
    def viewsource
      if session[:user_id]
        vars = request.query_parameters
        @nsn = vars['NSN']
         @viewnsn =SourceDatum.where("NSN = ? ", @nsn )
      else
        render 'sessions/login'
      end
   end 

    def view
      if session[:user_id]
        vars = request.query_parameters
        @nsn = vars['NSN']
         @viewnsn =ReferenceDatum.where("NSN = ? ", @nsn )
          else
          render 'sessions/login'
        end
    end

    def dictionary_detail
       if session[:user_id]
        vars = request.query_parameters
        @esci = vars['esci']
        @term = vars['term']
        @definition = vars['def']
        #@mm = User.where("id = ?", 4).select( "user_fname, user_lname")
         @mm =Term_dn.where("term_ID = ? ", @term )
         @def =Definition.where("definition_ID = ? ", @definition )
          @con_dn =Concept_dn.where("concept_ID = ? AND term_ID = ? ", @esci, @term)
          else
          render 'sessions/login'
        end
    end



end
