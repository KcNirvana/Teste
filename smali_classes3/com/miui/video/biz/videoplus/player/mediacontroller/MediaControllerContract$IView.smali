.class interface abstract Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;
.super Ljava/lang/Object;
.source "MediaControllerContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IView"
.end annotation


# static fields
.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_PREVIEW:I


# virtual methods
.method public abstract bindPresenter(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;)V
.end method

.method public abstract getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;
.end method

.method public abstract hide(Z)V
.end method

.method public abstract hideRotaeBtn()V
.end method

.method public abstract hideSeekBar()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCheckedListChanged()V
.end method

.method public abstract onEnterEditMode()V
.end method

.method public abstract onExitEditMode()V
.end method

.method public abstract onOrientationChanged(ZII)V
.end method

.method public abstract onUserLockRotate()V
.end method

.method public abstract onUserUnLockRotate()V
.end method

.method public abstract release()V
.end method

.method public abstract setBitmaps(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDesc(Ljava/lang/String;)V
.end method

.method public abstract setMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
.end method

.method public abstract setNavigation(Z)V
.end method

.method public abstract setPauseState()V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setPlayingState()V
.end method

.method public abstract setPreviewState()V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setViewAlpha(F)V
.end method

.method public abstract show(Z)V
.end method

.method public abstract showRotaeBtn()V
.end method

.method public abstract startShareScreen()V
.end method

.method public abstract stopShareScreen()V
.end method

.method public abstract stopUpdatePosition()V
.end method

.method public abstract updateDuration(Ljava/lang/String;)V
.end method

.method public abstract updatePosition(IF)V
.end method

.method public abstract updatePosition(JJ)V
.end method

.method public abstract updatePosition(Ljava/lang/String;)V
.end method

.method public abstract updatePosition(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateProgress(I)V
.end method
