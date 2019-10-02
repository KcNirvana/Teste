.class final Lcom/miui/video/onlineplayer/core/VideoContext$onVideoStatusChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoContext.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/onlineplayer/core/VideoContext;->onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;Lcom/miui/video/base/PlayStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "target",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $new:Lcom/miui/video/base/PlayStatus;


# direct methods
.method constructor <init>(Lcom/miui/video/base/PlayStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext$onVideoStatusChanged$1;->$new:Lcom/miui/video/base/PlayStatus;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/base/IPlayer$IVideoStatusListener;

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext$onVideoStatusChanged$1;->invoke(Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$IVideoStatusListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext$onVideoStatusChanged$1;->$new:Lcom/miui/video/base/PlayStatus;

    invoke-interface {p1, v0}, Lcom/miui/video/base/IPlayer$IVideoStatusListener;->onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method
