.class public Lcom/miui/home/launcher/assistant/module/InternalWhiteList;
.super Ljava/lang/Object;
.source "InternalWhiteList.java"


# static fields
.field private static HIDE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ICON_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SHOW_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static WIDGET_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpShowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.home.launcher.assistant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.klo.bugreport"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.mfashiongallery.emag"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.smarthome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "input"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "pinyin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.iflytek.speechcloud"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.channel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.unionpay.uppay"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.adecom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.o2o"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.duokan.reader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.wali.live"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.dianping.v1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.jr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.yidian.xiaomi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.BaiduMap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.shop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->mTmpShowMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->WIDGET_LIST:Ljava/util/Set;

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->WIDGET_LIST:Ljava/util/Set;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.personalassistant.favorite"

    const-string/jumbo v3, "com.miui.personalassistant.favorite.provider.FavoriteWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->ICON_LIST:Ljava/util/Set;

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->ICON_LIST:Ljava/util/Set;

    const-string/jumbo v1, "taxiuber"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->ICON_LIST:Ljava/util/Set;

    const-string/jumbo v1, "music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanShowMap()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->mTmpShowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static inGroupIconList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->ICON_LIST:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inShowList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->mTmpShowMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inWidgetList(Landroid/content/ComponentName;)Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->WIDGET_LIST:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHidePkg(Ljava/lang/String;)Z
    .locals 3

    sget-object v1, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->HIDE_LIST:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShowPkg(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->SHOW_LIST:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setShowList(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/InternalWhiteList;->mTmpShowMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
