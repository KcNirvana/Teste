.class final Lcom/miui/videoplayer/biz/service/preload/server/FileServer$mOkHttpClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FileServer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/server/FileServer;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/OkHttpClient;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/videoplayer/biz/service/preload/server/FileServer$mOkHttpClient$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$mOkHttpClient$2;

    invoke-direct {v0}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$mOkHttpClient$2;-><init>()V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$mOkHttpClient$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/server/FileServer$mOkHttpClient$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/videoplayer/biz/service/preload/server/FileServer$mOkHttpClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->Companion:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;->getMOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
