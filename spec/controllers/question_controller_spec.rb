require 'rails_helper'

RSpec.describe QuestionController, type: :controller do
let(:my_question) {Question.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, resolved: true)}

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @questions" do
      get :new
      expect(assigns(:questions)).not_to be_nil
    end
  end

  describe "GET #create" do
    it "increases the number of Question by 1" do
      expect{post :create, questions: {title: RandomData.random_sentence, body: RandomData.random_paragraph, resolved: true}}
      expect(assigns(:questions)).to eq Question.last
    end

    it "redirects to the new question" do
      question :create, questions: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
      expect(response).to redirect_to Question.last
    end
  end

  describe "GET #update" do
    it "updates post with expected attributes" do
      new_title = RandomData.random_sentence
      new_body = RandomData.random_paragraph

      put :update, id: question.id, question: {title: new_title, body: new_body}

      update_question = assigns(:question)
      expect(update_question.id).to eq my_question.id
      expect(update_question.title).to eq new_title
      expect(update_question.body).to eq new_body
    end

    it "redirects to the updated post" do
      new_title = RandomData.random_sentence
      new_body = RandomData.random_paragraph

      put :update, id: my_post.id, question: {title: new_title, body: new_body}
      expect(response).to redirect_to my_question
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      get :edit, {id: my_question.id}
      expect(response).to render_template :edit
    end

    it "assigns post to be updated to @post" do
      get :edit, {id: my_question.id}

      question_instance = assigns(:questions)

      expect(question_instance.id).to eq my_question.id
      expect(question_instance.title).to eq my_question.title
      expect(question_instance.body).to eq my_question.body
    end
  end

  describe "GET #destroy" do
    it "deletes the post" do
      delete :destroy, {id: my_question.id}
      count = Question.where({id: my_question.id}).size
      expect(count).to eq 0
    end

    it "redirects to posts index" do
      delete :destroy, {id: my_question.id}
      expect(response).to redirect_to question_path
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_question] to @questions" do
      get :index
      expect(assigns(:questions)).to eq([my_question])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_question.id}
      expect(response).to render_template :show
    end

    it "assigns my_question to @questions" do
      get :show, {id: my_question.id}
      expect(assigns(:questions)).to eq(my_question)
    end
  end

end
