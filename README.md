#End Points

## ProjectController

@Get

    • /api/project
        - Returns List<Project> of all projects
    
    • /api/project/{pid}
        - Returns Project defined by pid

@Post


    • /api/project
        - Adds a new project 
        

@Delete 

    • /api/project/{pid}
        - Deletes project defined by pid 


    

## ReportController 

@Get
    
    • /api/report
        - Returns List<Report> of all reports
    
    • /api/report/{pid}
        - Returns all project reports defined by a pid
    
    • /api/report/subtrade 
    Parameters: int rid
        - Returns List<Integer> of subtrades in a report 
    
    • /api/report/installer
    Parameters: int rid
        - Returns List<Integer> of installers in a report

    • /api/report/image
    Parameters: int rid, boolean pre
        - Returns List<Integer> of pre- or post-image IDs in a report 

    • /api/report/image/{imageId}
    Parameters: boolean pre
        - Returns an image defined by the imageId

@Post

    • /api/report
        - Adds a report
    
    • /api/report/subtrade  
    Parameters: int rid 
        - Adds subtrade to a report

    • /api/report/installer 
    Parameters: int rid, int uid 
        - Adds installer to a report

    • /api/report/image 
    Parameters: int rid, boolean pre, file imageFile 
        - Adds single pre- or post-image to a report

    • /api/report/images 
    Parameters: int rid, boolean pre, file images 
        - Adds multiple pre- or post-images to a report

@Delete 

    • /api/report/{rid}
        - Deletes report identified by rid


## UserController 

@Get

    • /api/user/{uname}
        - Returns user identified by uname

    • /api/user/all
        - Returns all users
    
    • /api/user/forgotPassword 
    Parameters: String uname 
        - Returns a user’s recovery question

@Post

    • /api/user
        - Adds a new user 

@Delete 
    
    • /api/user/{uname}
        - Deletes a user       

@Put 
    
    • /api/user
    Parameters: String newFname, String newLname, String newPassword
        - Updates a user’s information 
        
    • /api/user/{uname}/permissions
    Parameters: String newRole, boolean newActive, String newPassword 
        - Updates a user’s permissions
    
    • /api/user/forgotPassword 
    Parameters: String uname, String answer, String newPassword 
        - Resets user’s password using a security question and answer