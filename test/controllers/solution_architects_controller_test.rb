require 'test_helper'

class SolutionArchitectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solution_architect = solution_architects(:one)
  end

  test "should get index" do
    get solution_architects_url
    assert_response :success
  end

  test "should get new" do
    get new_solution_architect_url
    assert_response :success
  end

  test "should create solution_architect" do
    assert_difference('SolutionArchitect.count') do
      post solution_architects_url, params: { solution_architect: { firstname: @solution_architect.firstname, lastname: @solution_architect.lastname, shortcut: @solution_architect.shortcut, team_id: @solution_architect.team_id } }
    end

    assert_redirected_to solution_architect_url(SolutionArchitect.last)
  end

  test "should show solution_architect" do
    get solution_architect_url(@solution_architect)
    assert_response :success
  end

  test "should get edit" do
    get edit_solution_architect_url(@solution_architect)
    assert_response :success
  end

  test "should update solution_architect" do
    patch solution_architect_url(@solution_architect), params: { solution_architect: { firstname: @solution_architect.firstname, lastname: @solution_architect.lastname, shortcut: @solution_architect.shortcut, team_id: @solution_architect.team_id } }
    assert_redirected_to solution_architect_url(@solution_architect)
  end

  test "should destroy solution_architect" do
    assert_difference('SolutionArchitect.count', -1) do
      delete solution_architect_url(@solution_architect)
    end

    assert_redirected_to solution_architects_url
  end
end
