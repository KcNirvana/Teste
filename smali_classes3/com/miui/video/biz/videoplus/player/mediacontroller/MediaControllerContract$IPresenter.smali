.class interface abstract Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;
.super Ljava/lang/Object;
.source "MediaControllerContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IPresenter"
.end annotation


# static fields
.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_PREVIEW:I


# virtual methods
.method public abstract bindLandscapeView(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;)V
.end method

.method public abstract bindPortraitView(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;)V
.end method

.method public abstract clickBack()V
.end method

.method public abstract clickCancel()V
.end method

.method public abstract clickCollect()V
.end method

.method public abstract clickDelete()V
.end method

.method public abstract clickHide()V
.end method

.method public abstract clickMore()V
.end method

.method public abstract clickPause()V
.end method

.method public abstract clickRotateScreen()V
.end method

.method public abstract clickShare()V
.end method

.method public abstract clickShareScreen()V
.end method

.method public abstract clickUserLockRotate()V
.end method

.method public abstract getCheckedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentPlaySpeed()F
.end method

.method public abstract getCurrentPlayState()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentState()I
.end method

.method public abstract isInEditMode()Z
.end method

.method public abstract isInHiddenDir()Z
.end method

.method public abstract isInMultiWindowMode()Z
.end method

.method public abstract isSharingScreen()Z
.end method

.method public abstract isUserLockedRotate()Z
.end method

.method public abstract startPlaying()V
.end method

.method public abstract startSeeking()V
.end method

.method public abstract stopSeeking()V
.end method

.method public abstract stopSeekingFromPreview()V
.end method

.method public abstract updateSeekingValue(I)V
.end method

.method public abstract updateSeekingValue(JI)V
.end method

.method public abstract updateSeekingValueStatePreview(JI)V
.end method
