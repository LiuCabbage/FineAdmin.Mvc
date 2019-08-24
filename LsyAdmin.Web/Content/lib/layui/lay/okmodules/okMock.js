"use strict";
layui.define([], function(exprots) {
	var okMock = {
		api: {
            login: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/login",
            menu: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/menu/list"
            },
            user: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/list",
                batchNormal: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/batchNormal",
                batchStop: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/batchStop",
                batchDel: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/batchDel",
                add: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/add",
                edit: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/edit"
            },
            role: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/role/list"
            },
            permission: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/permission/list"
            },
            article: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/article/list"
            },
            log: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/log/list"
            },
            message: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/message/list"
            }
        }
	};
	exprots("okMock", okMock);
});
