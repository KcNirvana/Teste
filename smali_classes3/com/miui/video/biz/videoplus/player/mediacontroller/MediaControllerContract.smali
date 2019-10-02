.class Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract;
.super Ljava/lang/Object;
.source "MediaControllerContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;,
        Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;
    }
.end annotation


# static fields
.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_PLAYING:I = 0x1

.field private static final STATE_PREVIEW:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
