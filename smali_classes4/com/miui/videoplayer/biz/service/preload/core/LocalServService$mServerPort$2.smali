.class final Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LocalServService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static final INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;

    invoke-direct {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;-><init>()V

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/ServerInitor$Companion;->getPort()I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$mServerPort$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
