Vlog Review Application

MODELS
    user
        has many reviews
        has a secure password
        is unique
            attr: username
            attr: email
            attr: password
    vlog
        has many reviews
        is unique
            attr: name
    review
        belongs to user
        belongs to vlog
            attr: content
            attr: rating
            foreign_key: vlog_id
            foreign_key: user_id
CONTROLLERS
    application
        '/'
            >shows index
    user
        get '/create account'
            > shows user/created_acount
        get '/signin'
            > shows user signing in
        post '/signout'
            > clear session
            > redirect to home
    vlog
        get '/vlogs/:id'
            > shows vlog/show
        get '/vlogs/new'
            > shows vlog/new
        post '/vlogs
            > create new vlog
            > redirect vlog/:id
    review
        get '/reviews/:id'
            > shows reviews/show
        get '/reviews/:id/edit'
            > shows reviews/edit
        get '/reviews/new'
            > shows reviews/new
        patch '/reviews/:id
            > updates reviews with id == :id
            > redirect '/reviews/:id'
        post 'reviews'
            > creates new review
            > redirect '/reviews/:id'
        delete '/reviews/:id/delete'
            > deletes review with id == :id
VIEWS
    index 
        show latest reviews
        show signup page?
    user
        action: create new user
        view > see all reviews
    vlog
        show.erb > see all reviews for this vlog
        new.erb > action: create vlog > post to  /vlogs
    review
        show.erb > action: delete review if owner > delete to /reviews/:id/delete
            > link_to: /reviews/:id/edit if owner
        edit.erb > action: update review if ownwer > patch to /reviews/:id
        new.erb > action: create review > post to /reviews

      