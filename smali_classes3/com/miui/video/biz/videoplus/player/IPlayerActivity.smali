.class public interface abstract Lcom/miui/video/biz/videoplus/player/IPlayerActivity;
.super Ljava/lang/Object;
.source "IPlayerActivity.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IActionListener;


# virtual methods
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

.method public abstract getCurpageNextEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
.end method

.method public abstract getDefaultActivityBright()F
.end method

.method public abstract getFrameSeekbarBitmaps(Ljava/lang/String;)V
.end method

.method public abstract getHistoryVideoEntity(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;
.end method

.method public abstract getNextEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
.end method

.method public abstract getPrevEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
.end method

.method public abstract hideController()V
.end method

.method public abstract isCurPageAllVideo()Z
.end method

.method public abstract isInEditMode()Z
.end method

.method public abstract isInHiddenDir()Z
.end method

.method public abstract isLastOne()Z
.end method

.method public abstract losdSeekBarBitmaps(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onEnterEditMode()V
.end method

.method public abstract onEnterTransitionEnd()V
.end method

.method public abstract onEnterTransitionStart()V
.end method

.method public abstract onExitEditMode()V
.end method

.method public abstract onExitTransitionEnd()V
.end method

.method public abstract onExitTransitionStart()V
.end method

.method public abstract onUserLockRotate()V
.end method

.method public abstract onUserUnLockRotate()V
.end method

.method public abstract playNext()I
.end method

.method public abstract removeCheckedList()V
.end method

.method public abstract removeMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
.end method

.method public abstract selectAll(Z)V
.end method

.method public abstract selectEntity(IZ)V
.end method

.method public abstract selectEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Z)V
.end method

.method public abstract setKeepScreenOn(Z)V
.end method

.method public abstract showController()V
.end method

.method public abstract showPreviewFrameAtTime(Landroid/view/Surface;JLjava/lang/String;)V
.end method

.method public abstract updateBackgroundAlpha(F)V
.end method
