.class public Lcom/miui/securityscan/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static JV:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    sget-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    const-string/jumbo v1, "security_scan"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    const-string/jumbo v1, "power_center"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    const-string/jumbo v1, "app_manager"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    const-string/jumbo v1, "anti_virus"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    const-string/jumbo v1, "game_booster"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/Analytics;->setUseSystemAnalyticsOnly(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ln(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    instance-of v0, p0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    instance-of v0, p0, Lcom/miui/common/datamodel/Advertisement;

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    instance-of v0, p0, Lcom/miui/appmanager/model/a;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/miui/appmanager/model/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/a;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_4
    instance-of v0, p0, Lcom/miui/antivirus/result/Advertisement;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;

    goto :goto_0
.end method

.method public static Lo(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "APP_DOWNLOAD_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "APP_DOWNLOAD_FAIL"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "APP_INSTALL_START"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "APP_INSTALL_SUCCESS"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static Lp(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/securityscan/d/N;

    invoke-direct {v1, v0, p0}, Lcom/miui/securityscan/d/N;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/d/N;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static Lq(Lcom/xiaomi/analytics/AdAction;[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/AdAction;->addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;

    :cond_0
    return-void
.end method

.method public static Lr(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    invoke-static {p2}, Lcom/miui/securityscan/d/b;->Lo(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/d/b;->JV:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/miui/securityscan/d/c;

    invoke-direct {v4, v1, v0}, Lcom/miui/securityscan/d/c;-><init>(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v4, v0, Lcom/miui/common/datamodel/Advertisement;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/miui/common/datamodel/Advertisement;

    invoke-virtual {v0}, Lcom/miui/common/datamodel/Advertisement;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/miui/securityscan/d/d;

    invoke-direct {v4, v1, v0}, Lcom/miui/securityscan/d/d;-><init>(Ljava/lang/String;Lcom/miui/common/datamodel/Advertisement;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v4, v0, Lcom/miui/appmanager/model/a;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/miui/appmanager/model/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/a;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/miui/securityscan/d/e;

    invoke-direct {v4, v1, v0}, Lcom/miui/securityscan/d/e;-><init>(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v4, v0, Lcom/miui/antivirus/result/Advertisement;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/miui/antivirus/result/Advertisement;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Advertisement;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/miui/securityscan/d/f;

    invoke-direct {v4, v1, v0}, Lcom/miui/securityscan/d/f;-><init>(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v4, v0, Lcom/miui/gamebooster/gamead/Advertisement;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/miui/gamebooster/gamead/Advertisement;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Advertisement;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/miui/securityscan/d/g;

    invoke-direct {v4, v1, v0}, Lcom/miui/securityscan/d/g;-><init>(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {p0, v2}, Lcom/miui/securityscan/d/b;->Lp(Landroid/content/Context;Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method static synthetic Ls(Lcom/xiaomi/analytics/AdAction;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/d/b;->Lq(Lcom/xiaomi/analytics/AdAction;[Ljava/lang/String;)V

    return-void
.end method
