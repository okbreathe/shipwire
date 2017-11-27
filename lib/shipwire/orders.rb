module Shipwire
  class Orders < Api
    def list(params = {})
      request(:get, 'orders', params: params)
    end

    def create(body)
      request(:post, 'orders', body: body)
    end

    def find(id, params = {})
      request(:get, "orders/#{id}", params: params)
    end

    def update(id, body, params = {})
      request(:put, "orders/#{id}", body: body, params: params)
    end

    def cancel(id)
      request(:post, "orders/#{id}/cancel")
    end

    def holds(id, params = {})
      request(:get, "orders/#{id}/holds", params: params)
    end

    def items(id)
      request(:get, "orders/#{id}/items")
    end

    def returns(id)
      request(:get, "orders/#{id}/returns")
    end

    def trackings(id)
      request(:get, "orders/#{id}/trackings")
    end

    def holds_clear(id)
      request(:post, "orders/#{id}/holds/clear")
    end

    def mark_processed(id)
      request(:post, "orders/#{id}/markProcessed")
    end

    def mark_submitted(id)
      request(:post, "orders/#{id}/markSubmitted")
    end

    def mark_complete(id)
      request(:post, "orders/#{id}/markComplete")
    end
  end
end
