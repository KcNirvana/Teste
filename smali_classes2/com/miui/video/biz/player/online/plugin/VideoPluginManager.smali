.class public final Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;
.super Ljava/lang/Object;
.source "VideoPluginManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPluginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPluginManager.kt\ncom/miui/video/biz/player/online/plugin/VideoPluginManager\n*L\n1#1,62:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;",
        "",
        "()V",
        "TAG",
        "",
        "create",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "context",
        "Landroid/content/Context;",
        "info",
        "Lcom/miui/video/common/feed/entity/PlayInfo;",
        "plugin_id",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "VideoPluginManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;-><init>()V

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;

    const-string v0, "VideoPluginManager"

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lcom/miui/video/common/feed/entity/PlayInfo;)Lcom/miui/video/player/service/media/IVideoView;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/common/feed/entity/PlayInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/miui/video/common/feed/entity/PlayInfo;->plugin_id:Ljava/lang/String;

    const-string v0, "info.plugin_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/VideoPluginManager;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    return-object p1
.end method

.method public final create(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/video/player/service/media/IVideoView;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "hungama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/player/service/media/IVideoView;

    return-object p2

    :sswitch_1
    const-string v1, "voot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/player/service/media/IVideoView;

    return-object p2

    :sswitch_2
    const-string v1, "arre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/player/service/media/IVideoView;

    return-object v0

    :sswitch_3
    const-string v1, "ytb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/miui/video/player/service/media/IVideoView;

    return-object p1

    :sswitch_4
    const-string v1, "viu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/player/service/media/IVideoView;

    return-object p2

    :sswitch_5
    const-string v1, "cms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/miui/video/biz/player/online/plugin/cp/cms/CmsVideoView;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/player/service/media/IVideoView;

    return-object p2

    :sswitch_6
    const-string v1, "flickstree"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/miui/video/player/service/media/IVideoView;

    return-object p2

    :cond_0
    :goto_0
    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;

    invoke-direct {v0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalVideoView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/player/service/media/IVideoView;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50583a9a -> :sswitch_6
        0x18149 -> :sswitch_5
        0x1c822 -> :sswitch_4
        0x1d4a7 -> :sswitch_3
        0x2dd224 -> :sswitch_2
        0x37525e -> :sswitch_1
        0x4b6d786f -> :sswitch_0
    .end sparse-switch
.end method
