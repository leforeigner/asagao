class LessonController < ApplicationController
  def step1
    render plain:"Hello,#{params[:name]}!!"
  end

  def step2
    render plain: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end

  def step4
    render plain:"step4に移動しました"
  end

  def step5
    flash[:notice] = "Move to Step6"
    redirect_to action: "step6"
  end

  def step6
    render plain: flash[:notice]
  end

  def step7
    @price = (2000 * 1.08).floor
  end

  def step8
    @price = 1000
    render "step7"
  end

  def step9
    @comment = "<script>alert('Danger!')</script>Hello"
  end

  def step11
    @population = 70
    @surface = 30
  end

  def step12
    @time = Time.current
  end

  def step13
    @population = 127767944
  end

  def step14
    @message = "Hello \nThis is John"
  end

  def step15
  end

  def step16
  end

  def step17
    @zaiko = 0
  end

  def step18
    @items = {"frypan" => 2690, "Wine" => 800, "pepper mil" => 300, "peeler" => 100 }
  end
end
