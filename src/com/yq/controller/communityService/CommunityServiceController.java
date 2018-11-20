package com.yq.controller.communityService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by jiangkaixuan on 2018/11/15.
 * 社区服务
 */
@Controller
public class CommunityServiceController {

    /**
     *
     * @Title: CommunityServiceController
     * @Description: 进入社区服务页面
     * @author: jiangkaixuan
     * @Date : 2018/11/15 14:18
     */
    @RequestMapping(value = "/page/communityService.html")
    public ModelAndView toCommunityService() {
        ModelAndView view = new ModelAndView("page/communityService/community");
        return view;
    }
}
