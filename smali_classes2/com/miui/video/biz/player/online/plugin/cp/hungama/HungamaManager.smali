.class public final Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;
.super Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;
.source "HungamaManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;",
        "Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;",
        "()V",
        "getApiKey",
        "",
        "getTureUrl",
        "",
        "app_info",
        "callback",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;",
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
.field public static final Companion:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion;

.field private static final HUNGAMAAPIKEY_KEY:Ljava/lang/String; = "API-KEY"

.field private static final HUNGAMAHOST:Ljava/lang/String; = "capi.hungama.com"

.field private static final HUNGAMAPATH:Ljava/lang/String; = "/webservice/thirdparty/hls/v/v_latchk.php"

.field private static final HUNGAMAQUERY:Ljava/lang/String; = "&q=high&f=hls&property=mi_music&ut=1&type=22"

.field private static final HUNGAMASCHEME:Ljava/lang/String; = "https://"

.field private static final HUNGAMASECRETKEY:Ljava/lang/String; = "#HUNGAMA%MIMUSIC#18$17"

.field private static final HUNGAMAUSERID:Ljava/lang/String; = "123456"

.field private static final HUNGAMAUSERID_KEY:Ljava/lang/String; = "user_id"

.field public static final TAG:Ljava/lang/String; = "HungamaManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;->Companion:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion$instance$2;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getApiKey()Ljava/lang/String;
    .locals 2

    const-string v0, "#HUNGAMA%MIMUSIC#18$17123456"

    invoke-static {v0}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CipherUtils.MD5(originalStr)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getTureUrl(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
    .locals 5
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

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "contentId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/base/common/net/config/NetConfigHolder;->getInstance()Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;

    move-result-object v0

    const-string v1, "NetConfigHolder.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "&q=high&f=hls&property=mi_music&ut=1&type=22&user_id=123456"

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://capi.hungama.com/webservice/thirdparty/hls/v/v_latchk.php?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;->getApiKey()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "API-KEY"

    invoke-virtual {v1, v2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$getTureUrl$1;

    invoke-direct {v0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$getTureUrl$1;-><init>(Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    check-cast v0, Lokhttp3/Callback;

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;->getTrueUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
