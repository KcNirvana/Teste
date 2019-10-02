.class public final Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;
.super Ljava/lang/Object;
.source "ServerInitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;",
        "",
        "()V",
        "Companion",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

.field private static final DEFAULT_PORT:I = 0x7530

.field public static final TAG:Ljava/lang/String; = "ServerInitor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static fileServer:Lcom/miui/videoplayer/biz/service/preload/server/FileServer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static port:I

.field public static serverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    const/16 v0, 0x7530

    sput v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->port:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFileServer$cp()Lcom/miui/videoplayer/biz/service/preload/server/FileServer;
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->fileServer:Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    return-object v0
.end method

.method public static final synthetic access$getPort$cp()I
    .locals 1

    sget v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->port:I

    return v0
.end method

.method public static final synthetic access$getServerUrl$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setFileServer$cp(Lcom/miui/videoplayer/biz/service/preload/server/FileServer;)V
    .locals 0

    sput-object p0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->fileServer:Lcom/miui/videoplayer/biz/service/preload/server/FileServer;

    return-void
.end method

.method public static final synthetic access$setPort$cp(I)V
    .locals 0

    sput p0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->port:I

    return-void
.end method

.method public static final synthetic access$setServerUrl$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->serverUrl:Ljava/lang/String;

    return-void
.end method
