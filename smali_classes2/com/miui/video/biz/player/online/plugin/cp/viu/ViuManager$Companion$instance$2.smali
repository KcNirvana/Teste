.class final Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViuManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;",
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
.field public static final INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$Companion$instance$2;->invoke()Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;

    move-result-object v0

    return-object v0
.end method
