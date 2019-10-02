.class public final Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;
.super Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;
.source "ViuManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u0008\u0012\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0010J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0002R\u0014\u0010\u0003\u001a\u0008\u0018\u00010\u0004R\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0018\u00010\tR\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;",
        "Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;",
        "()V",
        "mAuthToken",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;",
        "mClientId",
        "",
        "mPlayToken",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;",
        "mPlayUrl",
        "getPlayToken",
        "",
        "mContentId",
        "callback",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;",
        "getPlayToken$biz_player_online_release",
        "getTureUrl",
        "app_info",
        "initAuthToken",
        "Companion",
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
.field public static final Companion:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion;

.field public static final TAG:Ljava/lang/String; = "ViuManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

.field private mClientId:Ljava/lang/String;

.field private mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

.field private mPlayUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->Companion:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDevUtils.getDeviceId()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getMAuthToken$p(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    return-object p0
.end method

.method public static final synthetic access$setMAuthToken$p(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    return-void
.end method

.method private final initAuthToken()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "viu_authtoken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/SingleGson;->get()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final getPlayToken$biz_player_online_release(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;

    invoke-direct {v1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;-><init>(Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    check-cast v1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;->getPlayToken(Ljava/lang/String;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V

    return-void
.end method

.method public getTureUrl(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "app_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->initAuthToken()V

    const-string v0, "ViuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playViu uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mClientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;->isAuthTokenValid(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mContentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->getPlayToken$biz_player_online_release(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getTureUrl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getTureUrl$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->mClientId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;->getAuthToken(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
