.class public Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;
.super Ljava/lang/Object;
.source "ApplistUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/apmobilesecuritysdk/commonbiz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ApplistUtil"

    const-string/jumbo v2, "illegal format applist, dont update."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ApplistUtil"

    const-string/jumbo v2, "illegal format applist, dont update."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ApplistUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applist extra config load success. extrasList len = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3
.end method

.method private a()V
    .locals 4

    const-string/jumbo v0, "02"

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a:Ljava/lang/String;

    const-string/jumbo v0, "com.tencent.mobileqqi,com.tencent.qqlive,com.nd.android.pandahome.hd,com.tongchenglove.main,com.gdhbgh.activity,com.dragon.android.pandaspace,com.handsgo.jiakao.android.kemu2,com.soufun.app,com.google.android.apps.maps,com.job.android,com.tencent.qqpim,com.baidu.homework,com.storm.smart,ly.pp.justpiano,com.android.mediacenter,com.android.cheyoohdrive,com.ymall.presentshop,com.eg.android.AlipayGphone,com.miguo.ui,com.pplive.androidphone,com.android.lexun,com.redirectin.rockplayer.android.unified,com.sz.order,cn.mucang.kaka.android,com.qijia.o2o,com.chinaideal.bkclient.tabmain,com.hiapk.marketpho,com.pingco.android.mix,com.leho.manicure,com.unique.app,com.tudou.android,com.beastudio.sflashlight,com.Astro.UI,com.oupeng.mini.android,com.shangpin,com.oppo.community,com.bbt.ask,com.yiqizuoye.studycraft,cn.htjyb.reader,com.herman.ringtone,com.sina.weibog3,com.tieyou.train.ark,smskb.com,com.tigerknows,com.ishugui,com.letv.android.client,com.apkol.root,com.yy.yymeet,com.xiudang.jiukuaiyou.ui,com.yx,com.leixun.taofen8,cn.shuangshuangfei,com.xcar.activity,com.guosen.android,com.youyuan.yyhl,com.secoo,com.ifeng.newvideo,com.sohu.inputmethod.sogou,com.speedsoftware.rootexplorer,com.xisue.zhoumo,air.com.familydoctor.FamilyDoctor,com.ophone.reader.ui,com.melodis.midomiMusicIdentifier.freemium,oms.mmc.app.almanac_inland,com.octinn.birthdayplus,com.when.android.note,com.taobao.taobao,com.autoconnectwifi.app,cn.wps.moffice,com.hexin.plat.android,cn.xianglianai,com.google.android.videos,cn.ibuka.manga.ui,com.funcity.taxi.driver,cn.kuwo.kwmusichd,com.netease.cloudmusic,com.pixlr.express,com.icson,com.xiangha,com.cungu.callrecorder.ui,com.cleanmaster.mguard_cn,com.baihe,com.kakao.talk,com.xingjiabi.shengsheng,com.taobao.wwseller,com.frego.flashlight,tv.pps.tpad,com.qq.qcloud,com.qidian.QDReader,com.ting.mp3.android,cn.chinabus.main,com.yuanfen.main,com.ss.android.essay.joke,com.iooly.android.lockscreen,cn.com.chinatelecom.account,com.baidu.music.lebo,com.xtuone.android.syllabus,com.gionee.client,com.caimi.creditcard,com.yrz.atourong,cn.ecook,im.yixin,com.buykee.princessmakeup,com.nd.desktopcontacts,com.evernote,com.wangzhi.MaMaMall,com.dataviz.docstogo,com.lakala.android,com.baidu.navi,com.thundersoft.hz.selfportrait,com.baozoumanhua.android,com.lanteanstudio.compass,com.mia.miababy,cn.wps.moffice_eng,com.sohu.auto.helper,com.duitang.main,com.aiba.app,com.google.android.youtube,com.ijinshan.kbatterydoctor,com.kk.dict,dianyun.baobaowd,com.mapbar.rainbowbus,com.baidu.easyroot,com.google.android.apps.genie.geniewidget,com.sonyericsson.extras.liveware,com.douban.radio,com.carsmart.emaintain,qsbk.app,com.tencent.weishi,com.wowotuan,com.tencent.news,com.imgo.pad,com.google.earth,com.dianping.t,predictor.ui,com.dianping.v1,flipboard.app,com.lonelycatgames.Xplore,com.lenovo.calendar,com.kingsoft,com.melot.meshow,com.dianxinos.superuser,cn.com.opda.android.clearmaster,com.lenovo.anyshare,xwj.calculator,com.autonavi.xmgd.navigator.toc,com.ymatou.shop,com.sogou.novel,com.alipay.android.app,com.baidu.BaiduMap,com.lenovo.safecenter,com.sg.sledog,com.google.android.gms,com.oupeng.browser,com.google.zxing.client.android,com.sec.app.samsungprintservice,com.wmyc.activity,com.scienvo.activity,com.alipay.android.client.pad,com.itangyuan,com.handsgo.jiakao.android,com.taobao.trip,com.mobisystems.fileman,com.nd.sms,com.gtgj.view,com.welove520.welove,com.ishowtu.hairfamily,com.baidu.baidulife,com.openet.hotel.view,com.secretlisa.xueba,me.papa,com.lejent.zuoyeshenqi.afanti,com.skvalex.callrecorder,com.mymoney,com.miantan.myoface,cn.kuwo.player,com.yaya.mmbang,org.mozilla.firefox,com.miui.weather2,com.melodis.midomiMusicIdentifier,com.intsig.camscanner,com.ciapc.tzd,com.shere.assistivetouch,com.douban.movie,cn.com.cmbc.mbank,com.fourcall.wldh,cn.ikamobile.trainfinder,cn.cj.pe,zte.com.wilink,com.ailiaoicall,com.xiuman.xingduoduo,com.meilishuo,com.google.android.calendar,bubei.tingshu,com.yoloho.dayima,com.baidu.input,com.yiyouapp,com.cootek.smartdialer,cn.cntvnews,com.elong.hotel.ui,com.meitu.meiyancamera,com.google.android.voicesearch,com.sinovatech.unicom.ui,com.hantai.voyager,com.baidu.wenku,com.baidu.travel,com.culiu.purchase,com.arcsoft.perfect365,com.juanpi.ui,flipboard.cn,com.google.android.street,com.yibasan.lizhifm,com.liveyap.timehut,cn.emoney.level2,com.lenovo.leos.cloud.sync,com.xcar.gcp,com.ss.android.article.news,com.shyl.train,eu.chainfire.supersu,cn.mama.pregnant,com.mobisystems.editor.office_with_reg,com.qiyi.video,com.china.app.bbsandroid,com.mx.browser,com.roamingsoft.manager,com.tencent.pb,com.pindou.snacks,com.xunlei.cloud,com.tencent.powermanager,com.mgyun.shua,com.suixingpay,com.alibaba.android.babylon,com.tencent.zebra,com.asiainfo.android,cn.chinabus.metro.main,com.wumii.android.mimi,com.xiaomi.channel,com.mobisystems.office,com.changdu,com.mapbar.android.accompany,com.tencent.mobileqq,com.huipinzhe.hyg,com.hupu.games,com.ijinshan.browser,android.zhibo8,com.sina.weibotab,com.zhiqupk.root,net.hidroid.hisurfing,com.vancl.activity,com.baomihua.xingzhizhu,com.Qunar,com.coohuaclient,com.duoduo.child.story,com.vanchu.apps.guimiquan,com.poptap.flashlight,com.iflytek.ringdiyclient,com.duokan.reader,com.erdo.android.FJDXCartoon,com.qiyi.video.pad,com.sec.chaton,com.android.bankabc,com.kugou.android.ringtone,com.android.cheyooh.vb,jp.gmo_media.decoproject,com.wmshua.backup,tv.pps.mobile,com.baidu.tieba,tv.danmaku.bili,com.nd.android.smarthome,fm.xiami.main,com.huawei.pisa.activity,com.rednovo.weibo,com.mgyun.shua,com.ireadercity,com.google.android.inputmethod.pinyin,com.coldworks.coldjoke,com.infinit.wostore.ui,com.cootek.smartinputv5,com.wochacha,com.gift.android,com.dx.agent2,vStudio.Android.Camera360,org.sbtools.gamehack,com.yoloho.ubaby,net.itrigo.doctor,com.zte.heartyservice,com.sonyericsson.trackid,com.mapbar.android.trybuynavi,com.caimi,com.medapp,com.ricebook.activity,com.jingyou.math,com.jingdong.app.mall,com.tongcheng.android,cn.jingling.motu.photowonder,com.rongcai.show,com.baidu.iknow,cn.j.guang,com.android.comicsisland.activity,com.mfw.voiceguide,com.yiwang,com.feizan.android.snowball,com.aapinche.android,com.blovestorm,com.tencent.map,com.woniu.groups,com.renren.mobile.android,com.taobao.qianniu,com.nqmobile.antivirus20,cn.mucang.xiaomi.android,com.budejie.www,com.pipcamera.activity,yong.universalplayer,com.happy.lock.wifi,com.app.hero.ui,com.besttone.elocal,com.to8to.assistant.activity,com.nd.android.pandareader,com.chaozh.iReaderFree,com.ting.mp3.qianqian.android,all.parttimeguidesystem,com.uanel.app.android.askdoc,com.nd.android.pandahome2,com.imohoo.favorablecard,com.jiecao.news.jiecaonews,cmb.pb,com.google.android.gsf,com.ludashi.benchmark,com.greenpoint.android.mc10086.activity,com.youku.tv,com.huimao.bobo,com.sec.spp.push,com.jiongji.andriod.card,com.lingan.seeyou,com.souyidai.investment.android,com.weiju,com.facebook.katana,com.wangzhuo.onekeyrom,com.snda.client,com.devuni.flashlight,com.estrongs.android.taskmanager,com.liujinzhi.mulflashlight,com.estrongs.android.pop,com.geili.koudai,com.yixia.videoeditor,com.ys.youshow,cn.com.sina.sports,com.google.android.apps.translate,com.dianxinos.powermanager,air.fyzb3,com.cooliris.media,com.htffund.mobile.ec.ui,com.mt.mttt,cn.cntv,cn.lieche.main,com.meitu.meipaimv,com.google.android.talk,com.nice.main,com.yipiao,com.lovebizhi.wallpaper,com.baidu.news,com.tuniu.app.ui,com.whatsapp,com.chaozh.iReaderFree15,sina.mobile.tianqitong,com.leduo.meibo,com.tmall.wireless,com.MobileTicket,com.sohu.auto.buyauto,com.husor.beibei,me.iweek.rili,com.duomi.android,com.fanhuan,com.happy.lock,com.hotbody.fitzero,com.estrongs.android.pop.cupcake,com.ijinshan.browser_fast,com.shuqi.controller,com.tshang.peipei,com.nd.android.pandalock,com.okooo.myplay,cn.longmaster.pengpeng,com.funcity.taxi.passenger,com.ijinshan.mguard,com.qq.buy,com.tencent.qqphonebook,cn.wps.moffice_i18n,com.sina.weibo,com.haitaouser.activity,com.mobileann.mafamily,com.qitu.market,com.lingdong.client.android,com.android.vending,cn.com.nd.s,com.moji.mjweather,com.xs.cn,com.google.android.play.games,com.baidu.searchbox,com.easou.plus,gpc.myweb.hinet.net.PopupVideo,com.iyd.reader.ReadingJoy,me.chunyu.ChunyuDoctor,cn.etouch.ecalendar.pad,com.netease.vopen,com.android.weather,com.gionee.aora.market,com.zhcw.zhongcs,com.taobao.ju.android,com.weihua.superphone,com.laiqian.milestone,com.mxtech.videoplayer.ad,com.edog,com.lextel.ALovePhone,com.kingreader.framework,com.tongchengrelian.main,com.sdu.didi.gui,dopool.player,com.lizi.app,wenhr.Mcdonalds,jp.naver.line.android,wabao.ringtone,com.browser2345,fm.qingting.qtradio,com.tripadvisor.tripadvisor,com.anjuke.android.haozu,com.xunlei.kankan,com.liulishuo.engzo,com.wacai365,net.xinhuamm.mainclient,com.byread.reader,com.alibaba.mobileim,com.youba.barcode,com.dolphin.browser.xf,com.alibaba.wireless,com.tuan800.android,cn.funnyxb.powerremember,com.sohu.tv,com.sogou.map.android.sogoubus,com.zlianjie.coolwifi,com.kapp.ifont,com.manboker.headportrait,com.bilin.huijiao.activity,com.snda.inote,com.sohu.auto.usedauto,com.anjuke.android.app,com.suning.mobile.ebuy,com.akazam.android.wlandialer,com.adobe.reader,me.ele,com.didapinche.booking,com.eastmoney.android.berlin,com.elinasoft.officeassistant,com.disney.brave_google,sogou.mobile.explorer,com.gewara,com.icbc,com.bjjpsk.jpskb,com.anysoft.tyyd,com.snda.tt,com.baidu.baidutranslate,com.shuame.mobile,cn.zhuna.activity,com.lenovo.FileBrowser,com.yoka.hotman,com.icarsclub.android,com.haobao.wardrobe,com.baidu.mbaby,com.tencent.hd.qq,com.kingroot.RushRoot,com.mengbaby,com.infraware.polarisoffice4,com.cyberlink.youperfect,me.abitno.vplayer.t,obg1.PhotafPro,cn.relian99,com.ibox.flashlight,com.nd.assistance,com.tuan800.tao800,com.u17.comic.phone,com.gaoqing.android,com.ydh.weile,jb.activity.mbook,com.wali.NetworkAssistant,cld.navi.mainframe,com.anyisheng.doctoran,com.baidu.voiceassistant,com.snda.youni,com.mobileuncle.toolbox,com.xianguo.pad,com.youdao.dict,com.sinyee.babybus.number,com.keenvim.cnCalendar,com.yek.lafaso,com.eshore.ezone,com.tiqiaa.icontrol,com.lingan.yunqi,com.shoujiduoduo.ringtone,com.huaqian,com.keramidas.TitaniumBackup,com.xinmei365.font,fm.jihua.kecheng,com.iBookStar.activity,org.fungo.fungolive,hu.tonuzaba.android,com.haomee.kandongman,com.hk515.patient,com.chinamobile.contacts.im,com.zhimahu,com.douguo.recipe,com.shazam.encore.android,com.vodone.caibo,com.tencent.token,com.roboo.explorer,com.bankcomm,com.iflytek.ihou.chang.app,com.myzaker.ZAKER_Phone,com.hww.locationshow,cn.dict.android.pro,com.wantu.activity,com.lbe.security,com.adobe.flashplayer,com.bizsocialnet,com.longdai.android,cn.kuwo.tingshu,com.youba.ringtones,com.google.android.apps.docs,com.baidu.hao123,com.sgiggle.production,com.mydream.wifi,com.esbook.reader,ctrip.android.view,com.meiqu.mq,com.chinamobile.cmccwifi,com.lianlian,cn.emoney.pf,com.tencent.qqmusicpad,com.mobvoi.baiding,com.ggeye.yunqi.api,com.eusoft.ting.en,com.feedov.baidutong,com.kimiss.gmmz.android,com.dianxinos.optimizer.duplay,com.metek.zqWeather,com.tencent.qqlite,com.ts.zys,com.yinyuetai.ui,com.kunpeng.babyting,me.topit.TopAndroid2,com.amazon.kindle,com.kcwangluo,com.lectek.android.sfreader,com.book2345.reader,com.tencent.qqpinyin,com.chinatelecom.bestpayclient,com.sankuai.meituan.merchant,com.tenpay.android,com.thestore.main,com.android.chrome,com.chinatelecom.pim,com.qo.android.moto,my.beautyCamera,com.jiayuan,com.roboo.joke,com.wuba,com.zdworks.android.zdcalendar,com.sangdh,com.hcsql.shengqiandianhua,com.adsk.sketchbookhd.galaxy.oem,com.futurefleet.pandabus.ui,com.mfw.roadbook,com.telecom.video,com.Android56,com.android.coolwind,com.zzenglish.client,com.huawei.hidisk,com.dewmobile.kuaiya,com.dianxinos.dxhome,com.mobile17173.game,com.lasun.mobile.client.activity,com.pingan.pabank.activity,com.hujiang.hjclass,com.achievo.vipshop,com.yybackup,com.vmall.client,com.soft.apk008v,com.nearme.note,com.mtime,com.tengchong.juhuiwan,com.ktls.scandandclear,com.softspb.tv.full,com.instamag.activity,cn.amazon.mShop.android,hk.cloudtech.cloudcall,com.shuame.rootgenius,com.facebook.orca,com.oupeng.max,com.ggeye.babymingzi,com.sinyee.babybus.kindergarten,cn.dooone.wifihelper_cn,com.jm.android.jumei,com.voice.assistant.main,com.iflytek.inputmethod,com.talkweb.nciyuan,com.androidesk,com.mt.mtxx.mtxx,oms.mmc.fortunetelling,com.antutu.ABenchMark,com.wole56.ishow,com.jsmcc,cn.am321.android.am321,com.ijinshan.duba,com.google.android.tts,com.zuobao.xiaobao,com.work.beauty,com.tencent.WBlog,com.chinamworld.bocmbci,com.netease.mobimail,com.xiachufang,viva.reader,com.jiasoft.highrail,com.when.coco,cn.banshenggua.aichang,com.baidu.baike,com.zhihu.android,com.haodou.recipe,cn.com.kuting.activity,com.dangdang.buy2,com.baidu.video,com.mt.mtgif,com.gwsoft.imusic.controller,com.aibang.abbus.bus,com.MoScreen,com.anguanjia.safe,com.qwbcg.android,hugh.android.app.zidian,com.zch.safelottery,com.lingduo.acorn,com.chongdong.cloud,InternetRadio.all,com.tencent.androidqqmail,com.funshion.video.mobile,com.pdager,com.lltskb.lltskb,cn.mucang.xiaomi.android.wz,com.taobao.apad,lqh.dream.llk,com.baidu.browser.apps,com.cpbao.lottery,com.jiuyan.infashion,com.quanmincai.caipiao,com.mygolbs.mybus,com.google.android.gm,com.cfinc.decopic,com.ds.sm,com.wsandroid.suite,com.sohu.newsclient,com.immomo.momo,com.noshufou.android.su,com.quanleimu.activity,com.roidapp.photogrid,com.mobilemafia.KingOfMoney,com.pingco.jc258cup,com.mgyun.shua.su,com.android.cheyooh,cn.cmvideo.isj,com.shuame.mobile,com.quvideo.xiaoying,cn.buding.coupon,com.xindaoapp.happypet,com.youku.phone,cn.safetrip.edog,com.to8to.housekeeper,com.tqkj.shenzhi,com.ganji.android,com.gamestar.pianoperfect,com.clov4r.android.nil,cn.andson.cardmanager,com.hf,com.snda.wifilocating,com.hunantv.imgo.activity,my.PCamera,com.ifeng.news2,com.iflytek.viafly,com.chinamworld.main,com.gui.gui.chen.flash.light.one,cn.com.spdb.mobilebank.per,com.flightmanager.view,com.wangzhi.MaMaHelp,com.manle.phone.android.yaodian,com.google.android.apps.books,com.sskj.flashlight,com.breadtrip,com.sohu.sohuvideo,com.zhiyi.android.community,com.autonavi.xmgd.navigator,com.etao.kaka,com.dft.hb.app,cn.dpocket.moplusand.uinew,com.lenovo.videotalk.phone,com.cplatform.surfdesktop,com.kugou.android,com.tni.TasKillerFull,com.skydh,com.taobao.reader,com.dianxing.heloandroid,com.dw.btime,com.dayingjia.stock.activity,com.tencent.mtt,cgtz.com.cgtz,cn.com.tiros.android.navidog,com.xiaoenai.app,com.iqianggou.android,com.yk.mhb,cn.coupon.kfc,com.tencent.qt.qtl,com.tencent.qqcamera,com.tqkj.weiji,ch.smalltech.ledflashlight.pro,com.letv.android.client.pad,com.zdworks.android.zdclock,com.duowan.lolbox,com.boohee.one,com.baidu.yuedu,com.tencent.android.pad,com.corner23.universalandroot.root123,com.wlanplus.chang,com.tencent.minihd.qq,com.qingchifan,com.caimi.moneymgr,com.fenbi.android.gaozhong,com.clou.sns.android.anywhered,com.tencent.research.drop,com.youloft.calendar,com.xiaomi.shop,com.sdu.didi.psnger,com.ceic.app,com.pplive.androidpad,cn.maketion.activity,com.lashou.groupurchasing,com.fanli.android.apps,com.skype.rover,com.tencent.qqlivehd,com.surfing.kefu,com.culiukeji.huanletao,com.ifeng.fhdt,com.dou_pai.DouPai,com.lottery9188.Activity,com.changba,com.android.dazhihui,com.uu.uunavi,com.baidu.baiducamera,com.calendar.UI,com.google.android.marvin.talkback,com.ggeye.jiakao.api,com.cmcc.mobilevideo,com.sinyee.babybus.chef,com.lenovo.browser,com.fmmatch.tata,pinkdiary.xiaoxiaotu.com,com.aspire.g3wlan.client,cn.mc1.sq,com.mymoney.sms,com.kaixin001.activity,com.netease.newsreader.activity,com.feiniu.market,com.sds.android.ttpod,com.buak.Link2SD,com.netease.mkey,com.himissing.poppy,com.cn21.ecloud,com.uuwldh,com.tingwen,com.fone.player,com.holiestar.flashoncall,com.jiasoft.swreader,com.ct.client,me.mizhuan,com.google.popqr.client.android,com.antutu.tester,com.androidesk.livewallpaper,com.alensw.PicFolder,com.ushaqi.zhuishushenqi,com.intsig.BizCardReader,com.itings.myradio,com.xiaobanlong.main,com.vlingo.midas,com.kandian.vodapp,com.cyworld.camera,com.ctri.ui,com.tripadvisor.tripadvisor.daodao,com.mediatek.filemanager,in.huohua.Yuki,com.baozun.customer.main,cn.eclicks.wzsearch,com.autonavi.cmccmap,cn.etouch.ecalendar,com.ddmap.android.privilege,com.lgl.calendar,jp.naver.linecamera.android,com.ximalaya.ting.android,com.izhenxin,com.syezon.wifi,com.duowan.kiwi,com.taobao.etao,com.youdao.note,com.google.android.music,cmccwm.mobilemusic,com.zhangdan.app,com.cjwifi,com.nuomi,com.hjwordgames,com.icoolme.android.weather,com.acp.main,com.hoolai.moca,com.yiche.price,com.memezhibo.android,com.banma.astro,com.kingroot.kinguser,com.netease.caipiao,com.netease.pris,com.meilapp.meila,com.codoon.gps,com.yek.android.kfc.activitys,com.duowan.mobile,com.beilou.haigou,com.appshare.android.ilisten,com.qzone,com.ucamera.ucam,com.rytong.bankps,com.umetrip.android.msky.app,cn.com.opda.android.update,com.baidu.appsearch,vz.com,com.anzogame.lol,com.yunlian.wewe,com.slanissue.apps.mobile.erge,com.baidu.netdisk,cn.mama.activity,com.heibai.campus,com.tencent.qqmusic,com.smile.gifmaker,com.sankuai.movie,com.peopleClients.views,com.quanneng.flashLed,com.skysoft.kkbox.android,com.cubic.autohome,com.cmbchina.ccd.pluto.cmbActivity,com.tencent.ttpic,com.metago.astro,com.zte.backup.mmi,com.babytree.apps.pregnancy,com.hisunflytone.android,com.autohome.usedcar,com.hujiang.cctalk,cn.eclicks.drivingtest,com.sogou.map.android.maps,com.mogujie,com.hufeng.filemanager,com.tencent.mm,com.lidroid.lockscreen,com.skype.raider,com.jxedt,com.sec.android.fwupgrade,com.yourdream.app.android,com.up591.android,com.iflytek.cmcc,com.dp.android.elong,com.husor.mizhe,com.danesh.system.app.remover,com.corp21cn.mail189,com.mobileann.MobileAnn,org.zywx.wbpalmstar.widgetone.uex10074790,com.liveaa.education,com.showself.ui,cn.andouya,com.anyview,com.anysoft.hxzts,com.sohu.auto.sohuauto,cn.com.tiros.android.navidog4x,com.lilysgame.calendar,com.sunnymum.client,com.audiocn.kalaok,com.samsung.swift.app.kiesair,com.when.wannianli,cn.buding.martin,com.lectek.android.ecp,net.iaround,com.wechat.voice,com.duoduo.passenger,com.sina.news,com.qq.reader,com.mapbar.android.mapbarmap,com.kuxun.scliang.plane,com.unionpay.uppay,com.srcb.mbank,cn.jsb.china,com.rytong.hnair,com.iboxpay.iboxpay,com.weibopay.mobile,com.cebbank.bankebb,com.besttone.travelsky,com.qiandai.xqd,com.rytong.airchina,com.ecitic.bank.mobile,com.yitong.mbank,com.koudai.weishop,com.air.sz,com.qihoo.permmgr,com.bill99.kuaiqian,com.cleanmaster.security_cn,com.cib.bankcib,com.umpay.upay.wallet,com.wangyin.payment,com.hkairlines.apps,com.baidu.wallet,com.gome.eshopnew,cn.unicompay.wallet,com.sec.android.wallet,cn.opda.a.phonoalbumshoushou,com.netease.railwayticket,com.rytong.ceair,com.united.mobile.android,com.rytong.app.bankhx,Kal.FlightInfo,com.suning.mobile.epa,com.paic.zhifu.wallet.activity,com.tencent.qqpimsecure,com.nbbank,com.qianwang.qianbao,org.zywx.wbpalmstar.widgetone.uex11296876,com.unionpay,com.travelsky.angel.mskymf.activity,com.mobiata.flighttrack.five,com.gkegg.airasia,com.ali.money.shield,com.rytong.bankgdb,com.huawei.wallet,com.ubercab,com.airbnb.android,com.csair.mbp,com.ssm.asiana,com.app.pocketmoney,com.besttone.hall,com.bw30.zsch,com.china3s.android,com.citicbank.cyberpay.ui,com.bhutya.jetstar,com.ips.android.client,com.unicom.wopay,com.staralliance.navigator,com.xs2theworld.kamobile,com.netease.epay,com.baidu.faceu,com.UCMobile,com.netease.my,com.netease.dhxy,com.tencent.tmgp.rxcq,com.superevilmegacorp.game,com.meitu.wheecam,com.rrh.jdb,com.motionportrait.PhotoSpeak"

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->b:Ljava/util/List;

    const-string/jumbo v0, "net.anylocation,com.huichongzi.locationmocker,com.dracrays.fakeloc,com.fly.gps,com.wifi99.android.locationcheater,com.aaa.fakeloc,com.dracrays.fakeloc,com.rong.xposed.fakelocation,name.caiyao.fakegps,com.tandy.android.mockwxlocation,com.lexa.fakegps,com.kollway.android.mocklocation,com.dracrays.fakelocc,com.soft.apk008v,com.fakegps.mock,com.dh.locationmock,com.tandy.android.mockwxlocation2,com.tandy.android.mockwxlocation1,com.brandonnalls.mockmocklocations,com.dracrays.fakelocc,com.blogspot.newapphorizons.fakegps,com.incorporateapps.fakegps.fre,com.tim.apps.mockgps,cn.tinyapps.fakegps,com.wsk.mockgps,com.lexa.fakegpsdonate,com.tuokebao.multigps,es.excellentapps.fakegpsgo,com.incorporateapps.fakegps,com.fakegps.mock,com.dracrays.fakeloc,com.evezzon.fakegps,com.just_soft.gps,com.tim.apps.mockgps,com.fakegps.mock,com.marlon.floating.fake.location,com.tistory.maxxgreen.app.virtuallocation,com.tongfu.gps_normal,net.anylocation.ultra,com.sxx.fakexx,com.tim.apps.mockgps,com.lkr.fakelocation,com.kollway.android.mocklocation,ru.gavrikov.hidemocklocations,com.lavzchen.fakegps,com.chongsoft.fakelocation,com.fakemygps.android,tk.kureksofts.fakegps,com.tim.apps.mockgps,com.lkr.fakelocation,net.secsoft.globalfly,com.lostad.fakeGPS,com.rong.xposed.fakelocation,com.github.marloww.moremocklocationapps,ggarciaapps.gps.pokemongo,com.kfn.fakegpsfree,com.aoyun.fakegps,com.lkr.fakelocation,com.dixuny.fakegpsjoystick,com.kfn.fakegpslocation,com.kristo.fakegpspro,com.incorporateapps.fakegps.free,com.lkr.fakelocation,com.lexa.fakegpsdonate,com.fakegps.app,ggarciaapps.fake.gps,com.txy.anywhere,com.kfn.fakegpspro,com.fakeweixin.makeup,com.marlon.floating.fake.location,com.marlon.floating.fake.location,br.com.tupinikimtecnologia.fakegpslocation,com.rosteam.fakegps,com.idans.locationfaker,com.lexa.fakegps,com.kanchsproject.fakegps,com.rong.xposed.fakelocation,com.javiersolis.app.pokemon.go.fakegps,com.thermatk.android.xf.fakegapps,com.idans.fakelocation,a1brains.com.fakegps,com.divi.fakeGPS,com.fakegps.mock,com.yeung.fakegps,mappstreet.com.fakegpslocation,rah.fakegps.withjoystick,com.kanchsproject.fakegpsk,com.fakegps.joystickpokemon,org.ajeje.fakelocation,com.lkr.fakelocationpro,com.kristo.pogofakegps,br.com.superengine.fakegps,com.yedapps.fakelocation.app.app.fakelocation,com.fakegps.mockfakelocation,com.incorporateapps.fakegps_route,pc.com.turnersark.fakegpslocations,com.lexa.fakegps,com.Laurentapps.fakegps,com.dracrays.fakeloc,ait.com.locationfaker,de.appsmadeingermany.gpsfakelocation,co.fakegpsforpokemongo.fakegpsforpokemongo,tk.kureksofts.fakegpsvip,com.aoyun.fakegps,fake.gpspoke.withjoystick,com.lkr.fakelocation,br.com.th3promarketer.fakelocationgps,com.project.jp.fakegpsgo,com.polliapps.fakelocation,com.fake_location,com.kfn.fakegps,com.lexa.fakegpsdonate,us.com.pokemongocheats.fake_gps_pokemon_go,com.pe.pokefakefree,aircloudteam.fake.gps,com.rong.xposed.fakelocation,com.dracrays.fakeloc,com.rong.xposed.fakelocation,com.lexa.newfakegps,com.lkr.fakelocationpro,com.pe.pokefakefree,com.fakegps.joystick,com.lkr.fakelocation,com.wechatanywhere,com.wx.mockgps,com.felix.mocklocation,com.templa.mockloc,otr.anywhere,com.changelocation,com.woshantu.modifyPosition,com.virtualdroid.loc,com.yy.xuniweizhi,com.txy.anywhere.clone,com.txy.anywheren"

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->c:Ljava/util/List;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ApplistUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applist init config load success, version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " applist count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,extra list count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
