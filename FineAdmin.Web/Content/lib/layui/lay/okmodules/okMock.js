"use strict";
layui.define([], function(exprots) {
	var okMock = {
		api: {
            login: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/login",
            menu: {
                list: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/menu/list"
            },
            user: {
                list: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/user/list",
                list2: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/user/list2",
                batchNormal: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/batchNormal",
                batchStop: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/batchStop",
                batchDel: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/batchDel",
                add: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/add",
                edit: "https://easy-mock.com/mock/5d0ce725424f15399a6c2068/okadmin/user/edit"
            },
            role: {
                list: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/role/list"
            },
            permission: {
                tree: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/permission/tree",
                list: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/permission/list",
                list2: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/permission/list2"
            },
            article: {
                list: "https://www.easy-mock.com/mock/5d5d0dd46cfcbd1b8627bf1d/ok-admin-v2.0/article/list"
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
