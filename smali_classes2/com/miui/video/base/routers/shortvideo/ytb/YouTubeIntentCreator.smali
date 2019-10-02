.class public Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;
.super Ljava/lang/Object;
.source "YouTubeIntentCreator.java"


# static fields
.field private static final ACTION_OPEN_CHANNEL:Ljava/lang/String; = "openChannel"

.field private static final ACTION_OPEN_PLAY_LIST:Ljava/lang/String; = "openPlayList"

.field private static final ACTION_OPEN_USER:Ljava/lang/String; = "openUser"

.field private static final ACTION_PLAY_PLAY_LIST:Ljava/lang/String; = "playPlayList"

.field private static final ACTION_PLAY_VIDEO:Ljava/lang/String; = "playVideo"

.field private static final ACTION_SEARCH:Ljava/lang/String; = "search"

.field private static final MODE_MI_VIDEO:Ljava/lang/String; = "mivideo"

.field private static final MODE_YOUTUBE:Ljava/lang/String; = "youtube"

.field private static final PARAMS_DEFAULT:Ljava/lang/String; = "default"

.field private static final PARAMS_FULL_SCREEN:Ljava/lang/String; = "fullscreen"

.field public static final PARAMS_MODE:Ljava/lang/String; = "mode"

.field private static final PARAMS_TRANSPARENT:Ljava/lang/String; = "transparent"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChannelIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/youtube/player/YouTubeIntents;->createChannelIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 8

    const-string p4, "action"

    invoke-virtual {p1, p4}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "detail_id"

    invoke-virtual {p1, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "isFlagActivityNewTask"

    invoke-virtual {p1, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playVideo"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    const-string p4, "fullscreen"

    const/4 v1, 0x1

    invoke-virtual {p1, p4, v1}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;Z)Z

    move-result v5

    const-string p4, "transparent"

    invoke-virtual {p1, p4, v7}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;Z)Z

    move-result v6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->createPlayVideoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string v1, "openPlayList"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p4, "id"

    invoke-virtual {p1, p4}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->createOpenPlaylistIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string v1, "playPlayList"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p4, "id"

    invoke-virtual {p1, p4}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->createPlayPlaylistIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_2
    const-string v1, "openUser"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p4, "key"

    invoke-virtual {p1, p4}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->createUserPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_3
    const-string v1, "openChannel"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p4, "id"

    invoke-virtual {p1, p4}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->createChannelIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_4
    const-string v1, "search"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p4, "key"

    invoke-virtual {p1, p4}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->createSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    goto :goto_0

    :cond_5
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_7

    const-string v1, "link"

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "path"

    const-string v2, "path"

    invoke-virtual {p1, v2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "back_scheme"

    const-string v2, "back_scheme"

    invoke-virtual {p1, v2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p4, p3}, Lcom/miui/video/framework/uri/PageInfoUtils;->setRefToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {p0, p4}, Lcom/miui/video/framework/uri/PageInfoUtils;->setIntentRefer(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    invoke-virtual {p4, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "BUNDLE_KEY_FLAG_CLEAR_TOP"

    invoke-virtual {p2, p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    const/high16 p1, 0x14000000

    invoke-virtual {p4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_8
    instance-of p0, p0, Landroid/app/Activity;

    if-eqz p0, :cond_9

    const-string p0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const/high16 p0, 0x10000000

    invoke-virtual {p4, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_a
    return-object p4
.end method

.method private static createOpenPlaylistIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/youtube/player/YouTubeIntents;->createOpenPlaylistIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createPlayPlaylistIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/youtube/player/YouTubeIntents;->createPlayPlaylistIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createPlayVideoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 1

    const-string v0, "mivideo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;

    invoke-static {p1}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;

    invoke-interface {p1, p0, p2}, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;->createShortVideoDetailIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p3, p4, p5}, Lcom/google/android/youtube/player/YouTubeIntents;->createPlayVideoIntentWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/youtube/player/YouTubeIntents;->createSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createUserPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/youtube/player/YouTubeIntents;->createUserIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultDeeplinkIntent(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;)Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0
.end method

.method public static handleDeepLink(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->createIntent(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0, p1}, Lcom/miui/video/base/routers/shortvideo/ytb/YouTubeIntentCreator;->openDefaultDeeplink(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;)V

    :goto_0
    return-void
.end method

.method private static openDefaultDeeplink(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "default"

    invoke-virtual {p1, v1}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
