.class public Lcom/miui/video/base/routers/search/OnlineSearchFilter;
.super Ljava/lang/Object;
.source "OnlineSearchFilter.java"

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

    const-string p2, "AdditionalSearch"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Search"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "H5SearchResult"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-class p2, Lcom/miui/video/base/routers/search/OnlineSearchService;

    invoke-static {p2}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/base/routers/search/OnlineSearchService;

    invoke-interface {p2, p1, p5}, Lcom/miui/video/base/routers/search/OnlineSearchService;->createOnlineSearchResultIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const-class p2, Lcom/miui/video/base/routers/search/OnlineSearchService;

    invoke-static {p2}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/base/routers/search/OnlineSearchService;

    invoke-interface {p2, p1, p5}, Lcom/miui/video/base/routers/search/OnlineSearchService;->createOnlineSearchIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

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
