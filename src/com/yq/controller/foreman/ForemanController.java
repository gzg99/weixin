package com.yq.controller.foreman;

import com.yq.entity.foreman.JdbForeman;
import com.yq.service.foreman.ForemanService;
import com.yq.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by jkx on 2018/11/19.
 */
@Controller
@RequestMapping
public class ForemanController extends StringUtil {

    @Autowired
    ForemanService foremanService;

    /**
     * @Description: 进入工匠列表页面
     * @Author: jkx
     * @Date: 2018/11/19 16:33
     */
    @RequestMapping(value = "/page/foreman/toForemanPage.html")
    @ResponseBody
    public ModelAndView toForemanPage() {
        ModelAndView view = new ModelAndView("page/foreman/foremanList");
        List<JdbForeman> jdbForemenList = foremanService.selForemanList();
        view.addObject("jdbForemenList", jdbForemenList);
        return view;
    }

    /**
     * @Description: 查询工长信息跳转工长详情页面
     * @Author: jkx
     * @Date: 2018/11/20 11:22
     */
    @RequestMapping(value = "/page/foreman/selForeman.html")
    @ResponseBody
    public ModelAndView selForeman(String id) {
        ModelAndView view = new ModelAndView("page/foreman/foreman");
        JdbForeman jdbForeman = foremanService.selForeman(id);
        view.addObject("jdbForeman", jdbForeman);
        return view;
    }

    /**
    * @Description: 跳转工长注册页面
    * @Author: jkx
    * @Date: 2018/11/20 12:04
    */
    @RequestMapping(value = "/page/foreman/toForemanSignUp.html")
    @ResponseBody
    public ModelAndView toForemanSignUp(){
        ModelAndView view = new ModelAndView("page/foreman/foreman_sign_up");
        return view;
    }

    /**
    * @Description: 工长注册信息
    * @Author: jkx
    * @Date: 2018/11/20 13:11
    */
    @RequestMapping(value = "/page/foreman/foremanSignUp.html")
    @ResponseBody
    public String foremanSignUp(JdbForeman jdbForeman) {
        int i = foremanService.insertForeman(jdbForeman);
        return i + "";
    }

    /**
    * @Description: 点赞
    * @Author: jkx
    * @Date: 2018/11/22 10:31
    */
    @RequestMapping(value = "/page/foreman/foremanPraise.html")
    @ResponseBody
    public String foremanPraise(String id) {
        int i = foremanService.foremanPraise(id);
        return i + "";
    }
}
