

require_relative 'api_test_base'

class LaborApiTests < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    @response_catcher = HttpResponseCatcher.new
    @controller = LaborApi.new CONFIG, http_call_back: @response_catcher
  end

  # Returns a paginated list of `BreakType` instances for a business.
  def test_list_break_types()
    # Parameters for the API call
    location_id = nil
    limit = nil
    cursor = nil

    # Perform the API call through the SDK function
    result = @controller.list_break_types(location_id: location_id, limit: limit, cursor: cursor)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Returns a paginated list of `EmployeeWage` instances for a business.
  def test_list_employee_wages()
    # Parameters for the API call
    limit = nil
    cursor = nil

    # Perform the API call through the SDK function
    result = @controller.list_employee_wages(limit: limit, cursor: cursor)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Returns a list of `WorkweekConfig` instances for a business.
  def test_list_workweek_configs()
    # Parameters for the API call
    limit = nil
    cursor = nil

    # Perform the API call through the SDK function
    result = @controller.list_workweek_configs(limit: limit, cursor: cursor)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
