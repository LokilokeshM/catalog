# catalogue_management

A new Flutter project.

## Getting Started
**Open Terminal**
run ./scripts/flutter_exec.sh 

**Create A Template Package/module**
flutter create --template=package package_name

**Application Package Structure**
## lib 
    1. Application Starts
    2. Handle Routing 
    3. Contains Over All Skeleton
## cm_common
    1. Contain all Common Functionality
    2. Contains all Common Widgets
    3. Contains Language String
    4. Constants 
    5. Local Storage
## cm_network
    1. Common Api Config using Dio 
    2. Api URls and Key
## cm_network_implementation
    1. Api Call Implementation
    2. Api Entity
## cm_core_ui
    1. Contains All UI based on the module 
    2. Handle Separated Logic based on individual module


**Folder Structure for Flutter_RiverPod**
## Application
    1. Handling Business Logic
    2. Maintain Presentation/UI State
    3. Handle Event
    4. It will connect with DataAccess to handle event
## Data Access
    1. It will connect with InfraStructure CRUD api call
    2. It helps to return Success or Failure
    3. When Api calls returns  success data response to success 
    4. When Api calls returns success data Error to Failure
## Infrastructure
    1. It handle api call 
    2. It maintain CRUD operation
## Domain
    1. Maintains Success and Failure Model
    2. Hold Repo Functionality
## Presentation
    1. It connect with application to handle UI
    2. It holds all UI Related Widgets
    