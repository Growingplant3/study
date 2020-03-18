class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
    if Payment.present?
      @category_total_money = {"food" => 0,"daily" => 0,"transport" => 0,"entertainment" => 0,"education" => 0,"insurance" => 0,"medical" => 0,"communicstion" => 0,"utilities" => 0,"rent" => 0,"saving" => 0,"other" => 0,"salary" => 0}
      i = DateTime.parse('"params[iuput_date(1i)]"-"params[input_date(2i)]"-"01" "00:00:00"')
      payments = Payment.where(input_date: [i..i + 1.month - 1.day])
      payments.each do |payment|
        @category_total_money[payment.category] += payment.money
        puts @category_total_money
      end
      @category_total_money.each do |key, value|
       puts "#{key}のカテゴリである、合計金額は#{value}です。"
      end
    end
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)
    @payment.user_id = current_user.id

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: '正しく記録されました' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: '変更を保存しました' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: '記録は破棄されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_params
      params.require(:payment).permit(:user_id, :input_date, :category, :money)
    end
end
