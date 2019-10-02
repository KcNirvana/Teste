.class public Lcom/miui/video/base/routers/longvideo/LongVideoFilter;
.super Ljava/lang/Object;
.source "LongVideoFilter.java"

# interfaces
.implements Lcom/miui/video/framework/uri/CUtils$IAppFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    :cond_0
    return-object p1
.end method

.method private getParamStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public exitApp()V
    .locals 0

    return-void
.end method

.method public getIntentWithUrl(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
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

    const-string p2, "mv"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_0

    const-string p2, "gmv"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_0
    const-string p2, "VideoLong"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-eqz p2, :cond_4

    const-string p2, "url"

    invoke-virtual {p3, p2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    const-string v1, ""

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "@"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v2, p2

    if-le v2, p6, :cond_1

    aget-object p5, p2, p5

    invoke-direct {p0, p5}, Lcom/miui/video/base/routers/longvideo/LongVideoFilter;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object p2, p2, p6

    invoke-direct {p0, p2}, Lcom/miui/video/base/routers/longvideo/LongVideoFilter;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "item_id"

    invoke-virtual {p2, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "playlist_id"

    invoke-virtual {p2, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "source"

    const-string p5, "source"

    invoke-virtual {p3, p5}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "target_url"

    const-string p5, "target_url"

    invoke-virtual {p3, p5}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "report"

    const-string p5, "report"

    invoke-virtual {p3, p5}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p3, Lcom/miui/video/base/routers/longvideo/LongVideoService;

    invoke-static {p3}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/base/routers/longvideo/LongVideoService;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/base/routers/longvideo/LongVideoService;->startLongVideoDetailActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object p4

    :cond_4
    const-string p2, "Filter"

    invoke-virtual {p3}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "url"

    invoke-virtual {p3, p2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    const-string v1, ""

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "&"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    array-length v2, p2

    if-lez v2, :cond_5

    aget-object p5, p2, p5

    const-string v1, "="

    invoke-direct {p0, p5, v1}, Lcom/miui/video/base/routers/longvideo/LongVideoFilter;->getParamStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz p2, :cond_6

    array-length p5, p2

    if-le p5, p6, :cond_6

    aget-object p2, p2, p6

    const-string p5, "="

    invoke-direct {p0, p2, p5}, Lcom/miui/video/base/routers/longvideo/LongVideoFilter;->getParamStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-object p4

    :cond_7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "item_id"

    invoke-virtual {p2, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "title"

    invoke-virtual {p2, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "source"

    const-string p5, "source"

    invoke-virtual {p3, p5}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "target_url"

    const-string p5, "target_url"

    invoke-virtual {p3, p5}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "report"

    const-string p5, "report"

    invoke-virtual {p3, p5}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p3, Lcom/miui/video/base/routers/longvideo/LongVideoService;

    invoke-static {p3}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/base/routers/longvideo/LongVideoService;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/base/routers/longvideo/LongVideoService;->startLongVideoFilterListActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p4
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
