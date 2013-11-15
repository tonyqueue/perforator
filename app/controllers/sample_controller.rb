class SampleController < ApplicationController
  def new
  end
  def create
    out = %x{../netget http://google.com 2>&1}
    render text: out
  end
end
