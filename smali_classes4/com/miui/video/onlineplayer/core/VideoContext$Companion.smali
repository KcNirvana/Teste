.class public final Lcom/miui/video/onlineplayer/core/VideoContext$Companion;
.super Ljava/lang/Object;
.source "VideoContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/onlineplayer/core/VideoContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/miui/video/onlineplayer/core/VideoContext$Companion;",
        "",
        "()V",
        "FEATURE_AUTO_ROTATION",
        "",
        "getFEATURE_AUTO_ROTATION",
        "()Ljava/lang/String;",
        "TAG",
        "getTAG",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFEATURE_AUTO_ROTATION()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/video/onlineplayer/core/VideoContext;->access$getFEATURE_AUTO_ROTATION$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/video/onlineplayer/core/VideoContext;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
