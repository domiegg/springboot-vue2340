<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户",
                        "menuJump":"列表",
                        "tableName":"yonghuxinxi"
                    }
                ],
                "menu":"用户管理"
            },
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"宽带类型",
                        "menuJump":"列表",
                        "tableName":"kuandaileixing"
                    },
					{
					    "buttons":[
					        "新增",
					        "修改",
					        "删除",
                            "状态"
					    ],
					    "menu":"宽带信息",
					    "menuJump":"列表",
					    "tableName":"kuandaixinxi"
					}
                ],
                "menu":"宽带管理"
            },
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"留言信息",
                        "menuJump":"列表",
                        "tableName":"liuyanxinxi"
                    }
                ],
                "menu":"留言管理"
            },
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告信息",
                        "menuJump":"列表",
                        "tableName":"xitonggonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    },
	  {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "修改"
                        ],
                        "menu":"用户",
                        "menuJump":"列表",
                        "tableName":"yonghuxinxi"
                    }
                ],
                "menu":"用户管理"
            },
            {
                "child":[
                    {
                        "buttons":[
                        ],
                        "menu":"宽带类型",
                        "menuJump":"列表",
                        "tableName":"kuandaileixing"
                    },
					{
					    "buttons":[
					        "新增",
					        "修改",
					        "删除"
					    ],
					    "menu":"宽带信息",
					    "menuJump":"列表",
					    "tableName":"kuandaixinxi"
					}
                ],
                "menu":"宽带管理"
            },
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                           
                        ],
                        "menu":"留言信息",
                        "menuJump":"列表",
                        "tableName":"liuyanxinxi"
                    }
                ],
                "menu":"留言管理"
            },
            {
                "child":[
                    {
                        "buttons":[
                          
                        ],
                        "menu":"公告信息",
                        "menuJump":"列表",
                        "tableName":"xitonggonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"用户",
        "tableName":"yonghuxinxi"
    }

];

var hasMessage = '';
