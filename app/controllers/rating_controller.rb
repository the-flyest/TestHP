class RatingController < ApplicationController
  
  def rating_page
    if session[:cmd_nr] == 1
      @participant = Participant.create(params[:participant])
    else 
      @participant = Participant.find(session[:id])
    end
    session[:id] = @participant[:id]
    
    #@cmd_nr = 1
    #@com = [1,2,3,4,5]
    #@ind_titel = ['A','B','C','D','E']
    @ind_titel = [1,2,3,4,5]
    @assign = Hash[@ind_titel.map {|x| [x, nil]}]      
    a00wf000_cmd = ['a00wf000', 'a00wf000_90', 'a00wf000_115', 'a00wf000_80to120_lin', 'a00wf000_S3_80to120_binary']
    a00wf000_cmd = a00wf000_cmd.shuffle
    bl0a0b00_cmd = ['bl0a0b00', 'bl0a0b00_90', 'bl0a0b00_115', 'bl0a0b00_80to120_lin', 'bl0a0b00_S3_80to120_binary']
    bl0a0b00_cmd = bl0a0b00_cmd.shuffle
    bl0c0z00_cmd = ['bl0c0z00', 'bl0c0z00_90', 'bl0c0z00_115', 'bl0c0z00_80to120_lin', 'bl0c0z00_S3_80to120_binary']
    bl0c0z00_cmd = bl0c0z00_cmd.shuffle
    c00v0c00_cmd = ['c00v0c00', 'c00v0c00_90', 'c00v0c00_115', 'c00v0c00_80to120_lin', 'c00v0c00_S3_80to120_binary']
    c00v0c00_cmd = c00v0c00_cmd.shuffle
    h00g000x_cmd = ['h00g000x', 'h00g000x_90', 'h00g000x_115', 'h00g000x_80to120_lin', 'h00g000x_S3_80to120_binary']
    h00g000x_cmd = h00g000x_cmd.shuffle
    j000fac0_cmd = ['j000fac0', 'j000fac0_90', 'j000fac0_115', 'j000fac0_80to120_lin', 'j000fac0_S3_80to120_binary']
    j000fac0_cmd = j000fac0_cmd.shuffle
    cmd_shf = session[:cmd_order]
    @cmds = {cmd_shf[0] => a00wf000_cmd, cmd_shf[1] => bl0a0b00_cmd, cmd_shf[2] => bl0c0z00_cmd, cmd_shf[3] => c00v0c00_cmd, cmd_shf[4] => h00g000x_cmd, cmd_shf[5] => j000fac0_cmd}
    

  end
  
  def final_rating
    @participant = Participant.find(session[:id])
    @noten = ['Sehr Gut', 'Gut', 'Befriedigend', 'Ausreichend', 'Mangelhaft', 'Ungenuegend']
    #@noten = [1,2,3,4,5,6]
    #session[:id] = @participant[:id]
  end
  
  def end_page
    reset_session
  end
    
end
