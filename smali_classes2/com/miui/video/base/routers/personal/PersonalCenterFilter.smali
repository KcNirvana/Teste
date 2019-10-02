.class public Lcom/miui/video/base/routers/personal/PersonalCenterFilter;
.super Ljava/lang/Object;
.source "PersonalCenterFilter.java"

# interfaces
.implements Lcom/miui/video/framework/uri/CUtils$IAppFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitApp()V
    .locals 0

    return-void
.end method

.method public getIntentWithUrl(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string p2, "History"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-class p2, Lcom/miui/video/base/routers/personal/history/HistoryService;

    invoke-static {p2}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/base/routers/personal/history/HistoryService;

    invoke-interface {p2, p1}, Lcom/miui/video/base/routers/personal/history/HistoryService;->startHistoryActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p2, "Favor"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "url"

    invoke-virtual {p3, p2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/miui/video/base/routers/personal/favor/FavorService;

    invoke-static {p3}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/base/routers/personal/favor/FavorService;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/base/routers/personal/favor/FavorService;->startFavorActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "Setting"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-class p2, Lcom/miui/video/base/routers/personal/PersonalRouterService;

    invoke-static {p2}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/base/routers/personal/PersonalRouterService;

    invoke-interface {p2, p1}, Lcom/miui/video/base/routers/personal/PersonalRouterService;->startSettingActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string p2, "h5internal"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "url"

    invoke-virtual {p3, p2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/miui/video/base/routers/personal/PersonalRouterService;

    invoke-static {p3}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/base/routers/personal/PersonalRouterService;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/base/routers/personal/PersonalRouterService;->startH5Activity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "Subscribe"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-class p2, Lcom/miui/video/base/routers/personal/pgc/SubscribeService;

    invoke-static {p2}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/base/routers/personal/pgc/SubscribeService;

    const-string p3, "source"

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/miui/video/base/routers/personal/pgc/SubscribeService;->startSubscribeActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleURI(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
