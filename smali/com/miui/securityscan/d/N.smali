.class final Lcom/miui/securityscan/d/N;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Ky:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/d/N;->Ky:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/securityscan/d/N;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private LJ(Ljava/lang/String;Lcom/xiaomi/analytics/Tracker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v0

    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string/jumbo v1, "ex"

    invoke-virtual {v0, v1, p3}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string/jumbo v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string/jumbo v1, "VIEW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p4}, Lcom/miui/securityscan/d/b;->Ls(Lcom/xiaomi/analytics/AdAction;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    return-void

    :cond_1
    const-string/jumbo v1, "CLICK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p5}, Lcom/miui/securityscan/d/b;->Ls(Lcom/xiaomi/analytics/AdAction;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/d/N;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v1, ""

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.miui.securitycenter_globaladevent"

    :goto_0
    iget-object v1, p0, Lcom/miui/securityscan/d/N;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/analytics/Analytics;->setDebugOn(Z)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/securityscan/d/N;->Ky:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/securityscan/d/c;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/miui/securityscan/d/c;

    invoke-static {v0}, Lcom/miui/securityscan/d/c;->Lt(Lcom/miui/securityscan/d/c;)Lcom/miui/common/card/models/AdvCardModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/d/c;->Lu(Lcom/miui/securityscan/d/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/miui/common/card/models/AdvCardModel;->getEx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/miui/common/card/models/AdvCardModel;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/miui/common/card/models/AdvCardModel;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/d/N;->LJ(Ljava/lang/String;Lcom/xiaomi/analytics/Tracker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/d/N;->Ky:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/miui/securityscan/d/c;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/miui/securityscan/d/c;

    invoke-static {v0}, Lcom/miui/securityscan/d/c;->Lt(Lcom/miui/securityscan/d/c;)Lcom/miui/common/card/models/AdvCardModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getUsePosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "com.miui.securitycenter_homepage"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "com.miui.securitycenter_scanresult"

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/miui/securityscan/d/d;

    if-eqz v2, :cond_4

    const-string/jumbo v0, "com.miui.securitycenter_datamodel"

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lcom/miui/securityscan/d/e;

    if-eqz v2, :cond_5

    const-string/jumbo v0, "com.miui.securitycenter_appmanager"

    goto :goto_0

    :cond_5
    instance-of v2, v0, Lcom/miui/securityscan/d/f;

    if-eqz v2, :cond_6

    const-string/jumbo v0, "com.miui.securitycenter_virusresult"

    goto :goto_0

    :cond_6
    instance-of v0, v0, Lcom/miui/securityscan/d/g;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.miui.securitycenter_gamebooster"

    goto/16 :goto_0

    :cond_7
    instance-of v1, v0, Lcom/miui/securityscan/d/d;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/miui/securityscan/d/d;

    invoke-static {v0}, Lcom/miui/securityscan/d/d;->Lv(Lcom/miui/securityscan/d/d;)Lcom/miui/common/datamodel/Advertisement;

    move-result-object v5

    invoke-static {v0}, Lcom/miui/securityscan/d/d;->Lw(Lcom/miui/securityscan/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/miui/common/datamodel/Advertisement;->getEx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/miui/common/datamodel/Advertisement;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/miui/common/datamodel/Advertisement;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/d/N;->LJ(Ljava/lang/String;Lcom/xiaomi/analytics/Tracker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    instance-of v1, v0, Lcom/miui/securityscan/d/e;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/miui/securityscan/d/e;

    invoke-static {v0}, Lcom/miui/securityscan/d/e;->Lx(Lcom/miui/securityscan/d/e;)Lcom/miui/appmanager/model/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/appmanager/model/a;->isLocal()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/d/e;->Ly(Lcom/miui/securityscan/d/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/miui/appmanager/model/a;->getEx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/miui/appmanager/model/a;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/miui/appmanager/model/a;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/d/N;->LJ(Ljava/lang/String;Lcom/xiaomi/analytics/Tracker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    instance-of v1, v0, Lcom/miui/securityscan/d/f;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/miui/securityscan/d/f;

    invoke-static {v0}, Lcom/miui/securityscan/d/f;->Lz(Lcom/miui/securityscan/d/f;)Lcom/miui/antivirus/result/Advertisement;

    move-result-object v5

    invoke-static {v0}, Lcom/miui/securityscan/d/f;->LA(Lcom/miui/securityscan/d/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/miui/antivirus/result/Advertisement;->getEx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/miui/antivirus/result/Advertisement;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/miui/antivirus/result/Advertisement;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/d/N;->LJ(Ljava/lang/String;Lcom/xiaomi/analytics/Tracker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    instance-of v1, v0, Lcom/miui/securityscan/d/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/securityscan/d/g;

    invoke-static {v0}, Lcom/miui/securityscan/d/g;->LB(Lcom/miui/securityscan/d/g;)Lcom/miui/gamebooster/gamead/Advertisement;

    move-result-object v5

    invoke-static {v0}, Lcom/miui/securityscan/d/g;->LC(Lcom/miui/securityscan/d/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/miui/gamebooster/gamead/Advertisement;->getEx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/miui/gamebooster/gamead/Advertisement;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/miui/gamebooster/gamead/Advertisement;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/d/N;->LJ(Ljava/lang/String;Lcom/xiaomi/analytics/Tracker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
