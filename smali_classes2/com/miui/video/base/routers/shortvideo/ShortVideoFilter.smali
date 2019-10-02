.class public Lcom/miui/video/base/routers/shortvideo/ShortVideoFilter;
.super Ljava/lang/Object;
.source "ShortVideoFilter.java"

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

    const-string p2, "VideoShort"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "url"

    invoke-virtual {p3, p2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;

    invoke-static {p3}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;->createShortVideoDetailIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "PlayListDetail"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "url"

    invoke-virtual {p3, p2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;

    invoke-static {p3}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;->createPlaylistDetailIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
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

    const-string p2, "YouTube"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1, p3, p5, p6, p7}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->handleDeepLink(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;Landroid/os/Bundle;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
