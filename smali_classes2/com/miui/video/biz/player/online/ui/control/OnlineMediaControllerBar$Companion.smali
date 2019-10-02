.class public final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "<set-?>",
        "",
        "updateProgress",
        "getUpdateProgress",
        "()Z",
        "setUpdateProgress",
        "(Z)V",
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

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpdateProgress()Z
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getUpdateProgress$cp()Z

    move-result v0

    return v0
.end method

.method public final setUpdateProgress(Z)V
    .locals 0

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$setUpdateProgress$cp(Z)V

    return-void
.end method
