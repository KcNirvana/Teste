.class public final Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;
.super Lcom/miui/video/common/component/arch/BaseModuleApplication;
.source "LocalPlayerApplication.kt"


# annotations
.annotation build Lio/github/prototypez/appjoint/core/ModuleSpec;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;",
        "Lcom/miui/video/common/component/arch/BaseModuleApplication;",
        "()V",
        "onCreate",
        "",
        "video_player_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/component/arch/BaseModuleApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/component/arch/BaseModuleApplication;->onCreate()V

    return-void
.end method
