.class final Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ServiceHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/router/ServiceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/miui/video/base/routers/localserver/LocalServerService;",
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
        "Lcom/miui/video/base/routers/localserver/LocalServerService;",
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
.field public static final INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;-><init>()V

    sput-object v0, Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;->INSTANCE:Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/miui/video/base/routers/localserver/LocalServerService;
    .locals 1

    const-class v0, Lcom/miui/video/base/routers/localserver/LocalServerService;

    invoke-static {v0}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/localserver/LocalServerService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/router/ServiceHolder$sLocalServerService$2;->invoke()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object v0

    return-object v0
.end method
