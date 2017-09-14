//
//  main.swift
//  EyreFree
//
//  Created by EyreFree on 2017/9/13.
//
//  Copyright (c) 2017 EyreFree <eyrefree@eyrefree.org>
//
//  This file is part of EFResume.
//
//  EFResume is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  EFResume is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.

import Foundation

func main() {
    // 打开模板文件
    var templete = EFTemplete(path: EFPath.templete)

    // 填入内容
    input(templete: &templete)

    // 打开生成的简历文件
    let resume = EFFile(path: EFPath.resume)
    // 应用所填入的信息
    resume.content = templete.apply()
    // 保存
    resume.save()
}

func input(templete: inout EFTemplete) {
    // 页面属性
    templete.pageTitle.set("汪小祯的个人简历")
    templete.pageDescription.set("汪小祯的个人简历")

    // 基本信息
    templete.name.set("汪小祯")
    templete.description.set("iOS开发")
    templete.basicInfo.set(
        [
            "基本信息": [
                "年龄：21",
                "性别：男",
                "大学：湖南工业大学"
            ],
            "联系方式": [
                "QQ：245328522",
                "邮箱：wxz@wxz.name",
                "手机：17608450050"
            ],
            "社交账号": [
                "微博：" + "九九不会写代码".a(link: "http://weibo.com/u/5665224565"),
                "博客: " + "isnine".a(link: "https://www.wxz.name"),
                "GitHub：" + "isnine".a(link: "https://github.com/isnine")
            ]
        ]
    )

    // 个人简介
    templete.information.set(
        [
            "目前就读于湖南工业大学计算机学院，大学期间独立完成\("工大助手iOS端".a(link: "https://itunes.apple.com/cn/app/gong-da-zhu-shou-hu-nan-gong/id1164848835"))的开发、维护及团队协调工作，热爱程序开发，在校期间除周末外每日均在实验室。关注开源社区，",
            "2016年5月 获蓝桥杯团队赛全国选拔赛二等奖(全国Top36%,团队负责人)",
            "2016年9月 获湖南省程序设计大赛三等奖(全省TOP55%,独立参赛)",
            "2016年9月 任Let's try开发社社长",
            "2016年9月 任创新实验室副组长",
            "2017年9月 获湖南省程序设计大赛二等奖(全省TOP35%,团队负责人)",
            "寻觅一份 iOS 开发的实习工作，也可以根据具体情况考虑其它相关岗位。".strong()
        ]
    )

    // 技能专长
    templete.specialities.set(
        [
            "计算机网络": 10,
            "操作系统": 10,
            "Objective-C": 40
        ]
    )

    // 技能评价
    templete.skillsList.set(
        [
            "iOS": 5,
            "Swift": 1,
            "Objective-C": 4,
            "Markdown": 3,
            "Git": 3,
            "Linux": 2
        ]
    )
    templete.skillsDescription.set(
        [
            "有良好的代码编写规范，",
            "对应用工作机制较熟悉，",
            "有良好的程序开发能力，",
            "积攒了丰富的调试经验，",
            "热衷于用代码解决问题，",
            "熟练使用版本控制工具，",
            "倾力于开源与技术分享，",
            "能够阅读英文技术文档，",
            "关注科技行业前沿技术。"
        ]
    )

    // 社区经验
    templete.GitHubID.set("isnine")
    templete.community.set(
        [
            "iOS": "开发、维护和推广 \("GitHub".a(link: "https://github.com/isnine")) 上的 iOS 开源库。",
            "开发": "作为 \("工大助手".a(link: "http://hugongda.com:8888/res/index")) 团队成员，参与工大助手的开发,并维护工大助手的\("开源版本".a(link: "https://github.com/isnine/HutHelper-Open"))"
        ]
    )

    // 个人经验
    templete.experience.set(
        [
            "2": [
                "2 年 iOS 开发经验；",
                "独立维护并开发",
                "线上App项目"
            ],
            "3": [
                "3 年基础学习；",
                "在大学实验室3年；",
                "注重基础"
            ]
        ]
    )

    // 项目经历
    templete.project.set(
        [
            [
                "category": "工大助手（2016.9 — 至今）",
                "pro_name": "独立维护并开发工大助手iOS端,参与策划新功能，协调团队成员关系",
                "pro_desc": [
                    "从上架 \("AppStore".a(link: "https://itunes.apple.com/cn/app/gong-da-zhu-shou-hu-nan-gong/id1164848835")) 开始独立开发和维护工作至今，主要完成了新模块的开发、用户数量4000+,AppStore综合评分4.5+星",
                    "参与团队协调以及策划新功能，团队包括Android、iOS、UI、前端、后台，全平台总用户在2W8人左右",
                    "实现了课程表,考试成绩,考试计划,校园说说,二手市场,电费查询,失物招领等校园中一系列的功能。"
                ]
            ]
        ]
    )

    // 开源项目
    templete.openSource.set(
        [
            [
                "name": "工大助手",
                "title": "HutHelper-Open（50+ Star）",
                "description": "HutHelper-Open是工大助手的开源版本，移除了线上接口，其他代码全部与线上版本相同。实现了课程表,考试成绩,考试计划,校园说说,二手市场,电费查询,失物招领等校园中一系列的功能",
                "link": "https://github.com/isnine/HutHelper-Open"
            ]
        ]
    )

//    // 扩展技能
//    templete.interests.set(
//        [
//            "翻译": "fi-pencil",
//            "前端": "fi-html5",
//            "设计": "fi-paint-bucket",
//            "桌面": "fi-folder"
//        ]
//    )
}

main()
