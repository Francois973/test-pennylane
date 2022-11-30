class InvoicesController < ApplicationController
  INVOICE_PER_PAGE = 10

  def index
    @page = params.fetch(:page, 0).to_i

    @invoices = Invoice.offset(@page * INVOICE_PER_PAGE).limit(INVOICE_PER_PAGE)

  end
end
