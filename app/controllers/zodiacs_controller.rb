class ZodiacsController < ApplicationController
  def sign
    @sign_find = params["the_sign"]
    title = Zodiac.find_by({:sign => @sign_find})
    @animal = title["creature"]
    @fortune = title["fortune"]
  end
  def creature
    @creature_find = params["the_creature"]
    title = Zodiac.find_by({:creature => @creature_find})
    @animal = title["creature"]
    @title = title["sign"]
    @fortune = title["fortune"]
  end
  def idlookup
    @zodiac = Zodiac.find_by({:id => params["id"]})
  end
  def index
    @listofzodiacs = Zodiac.all
  end
  def new_form
  end
  def create_row
    z = Zodiac.new
    z.sign = params["symbol"]
    z.creature = params["animal"]
    z.fortune = params["fortune"]
    z.save
    redirect_to("http://localhost:3000/zodiacs")
  end
  def destroy
    z = Zodiac.find(params["the_id"])
    z.destroy
    redirect_to("http://localhost:3000/zodiacs")
  end
end
