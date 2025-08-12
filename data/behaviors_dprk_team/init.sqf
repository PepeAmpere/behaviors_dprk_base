fn_orderToFollow = {
    _receiver = _this select 0;
    _entity = _this select 1;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName", "Follow", 
            "entityToFollow", _entity
        ]
    ];
};

fn_orderToMove = {
    _receiver = _this select 0;
    _position = _this select 1;
    _heading = _this select 2;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName",  "Move", 
            "position", _position,
            "heading", _heading
        ]
    ];
};

fn_orderToFire = {
    _receiver = _this select 0;
    _entity = _this select 1;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName",  "Fire", 
            "entityToFireAt",  _entity
        ]
    ];
};

fn_orderToWait = {
    _receiver = _this select 0;
    _heading = _this select 1;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName", "Wait",
            "heading", _heading
        ]
    ];
};

fn_orderToMount = {
    _receiver = _this select 0;
    _vehicle = _this select 1;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName", "Mount", 
            "vehicleToMount", _vehicle
        ]
    ];
};

fn_orderToDismount = {
    _receiver = _this select 0;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName", "Dismount"
        ]
    ];
};

fn_orderToAutonomousMove = {
    _receiver = _this select 0;
    _position = _this select 1;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName",  "AutonomousMove", 
            "position", _position
        ]
    ];
};

fn_orderToSupress = {
    _receiver = _this select 0;
    _entity = _this select 1;

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName",  "Supress", 
            "entityToFireAt",  _entity,
            "position", _entity
        ]
    ];
};

fn_orderToSubteamFireAt = {
    _receiver = _this select 0;
    _position = _this select 1;
    _soldiers = _this select 2;
    

    _receiver receiveMessage[
        "NewOrder", 
        [
            "orderName",  "SubteamFireAt", 
            "position", _position,
            "soldierIndexes",  _soldiers        
        ]
    ];
};