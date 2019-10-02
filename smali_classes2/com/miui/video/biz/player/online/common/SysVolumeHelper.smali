.class public final Lcom/miui/video/biz/player/online/common/SysVolumeHelper;
.super Ljava/lang/Object;
.source "SysVolumeHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/common/SysVolumeHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getContext",
        "()Landroid/content/Context;",
        "maxVolume",
        "",
        "getCurrentVolume",
        "getCurrentVolumePercent",
        "getNewVolumeValue",
        "distanceY",
        "",
        "setVolumeByNewValue",
        "",
        "newVolume",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->context:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->audioManager:Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->maxVolume:I

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentVolume(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    return p1
.end method

.method public final getCurrentVolumePercent(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getCurrentVolume(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->maxVolume:I

    if-lez v0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    iget v0, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->maxVolume:I

    div-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getNewVolumeValue(F)I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->getCurrentVolume(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->maxVolume:I

    if-le v0, p1, :cond_2

    iget p1, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->maxVolume:I

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    return p1
.end method

.method public final setVolumeByNewValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/common/SysVolumeHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
