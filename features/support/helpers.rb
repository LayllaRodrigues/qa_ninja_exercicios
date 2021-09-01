

module Helpers
  def get_token
    2.times do
      js_script = 'return window.localStorage.getItem("default_auth_token");'
      @token = page.execute_script(js_script)
      break if @token != nil
      sleep 1
    end
    @token
  end
end
