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
    user
        get '/create account'
        get '/signin'
        get '/signout'
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
        get '/reviews/:id/edit'
        get '/reviews/new' 
        patch '/reviews/:id
            > updates reviews with id == :id
        post 'reviews'
            > creates new review
        delete '/reviews/:id/delete'
            > deletes review with id == :id
VIEWS
    index 
        show latest reviews
    user
        action: create new user
        view > see all reviews
    vlog
        show.erb > see all reviews for this vlog
        new.erb

    review
        show.erb > action: delete review if owner
        edit.erb > action: update review if ownwer
        new.erb > action: create review

      