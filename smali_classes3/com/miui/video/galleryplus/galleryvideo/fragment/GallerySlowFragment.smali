.class public Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;
.super Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;
.source "GallerySlowFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$LoadSeekBarTask;
    }
.end annotation


# static fields
.field private static final MSG_GET_SEEK_BAR_BITMAP_LIST:I = 0x0

.field private static final MSG_HIDE_SAVE_DIALOG:I = 0x3

.field private static final MSG_RESET_FIRST_BACK:I = 0x4

.field private static final MSG_SAVE_COMPLETE:I = 0x1

.field private static final MSG_SAVE_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GallerySlowFragment"


# instance fields
.field private mFirstBack:Z

.field private mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOnProgressChangedListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

.field private mOnSpeedRangeChangedListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

.field private mPlayWhenResume:Z

.field private mProgressAnimator:Landroid/animation/AnimatorSet;

.field private mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

.field private mSaveCompleted:Z

.field private mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

.field private mSavePath:Ljava/lang/String;

.field private mSaveTempPath:Ljava/lang/String;

.field private mSlowSpeed:F

.field private mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

.field private mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mFirstBack:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mPlayWhenResume:Z

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$TbotPaP_15qeFALYR0h_PjOjdoo;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$TbotPaP_15qeFALYR0h_PjOjdoo;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mOnSpeedRangeChangedListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mOnProgressChangedListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->isAlmostPlayComplete()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSlowSpeed:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveTempPath:Ljava/lang/String;

    return-object p0
.end method

.method private isAlmostPlayComplete()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$17(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne v0, p2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    iget-boolean p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mFirstBack:Z

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mFirstBack:Z

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$string;->save_cancel_toast:I

    invoke-virtual {p0, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->runUIMessage(IJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->dismiss(Landroid/content/Context;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->stopTranscoder()V

    :cond_1
    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$1;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    iput-boolean p3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mFirstBack:Z

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->removeUIMessages(I)V

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method public static synthetic lambda$null$13(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveTempPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveTempPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSavePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->updateMediaStore(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onClickOk$14(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$OsesNGRnLEUUr5gg-HKuPwSn_4o;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$OsesNGRnLEUUr5gg-HKuPwSn_4o;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->runUIMessage(I)V

    return-void
.end method

.method public static synthetic lambda$onClickOk$15(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->runUIMessage(I)V

    return-void
.end method

.method public static synthetic lambda$onClickOk$16(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->transcoderVideo()I

    return-void
.end method

.method private startAnim()V
    .locals 12

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v2

    cmpg-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v1

    iget-object v8, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v8}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v8

    sub-int/2addr v1, v8

    int-to-long v8, v1

    cmp-long v1, v8, v6

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    new-array v10, v5, [F

    iget-object v11, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v11}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v11

    aput v11, v10, v4

    iget-object v11, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v11}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v11

    aput v11, v10, v3

    invoke-virtual {v1, v10}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->createPositionAnimator([F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v8, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$4;

    invoke-direct {v8, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v1

    iget-object v8, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v8}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    iget v8, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSlowSpeed:F

    div-float/2addr v1, v8

    float-to-long v8, v1

    cmp-long v1, v8, v6

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    new-array v10, v5, [F

    iget-object v11, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v11}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v11

    aput v11, v10, v4

    iget-object v11, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v11}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v11

    aput v11, v10, v3

    invoke-virtual {v1, v10}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->createPositionAnimator([F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v8, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$5;

    invoke-direct {v8, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$5;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v8

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v1

    int-to-long v10, v1

    sub-long/2addr v8, v10

    cmp-long v1, v8, v6

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    new-array v5, v5, [F

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v6}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v6

    aput v6, v5, v4

    aput v2, v5, v3

    invoke-virtual {v1, v5}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->createPositionAnimator([F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$6;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$6;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v1

    iget-object v8, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v8}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v8

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v8

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v1

    int-to-long v10, v1

    sub-long/2addr v8, v10

    cmp-long v1, v8, v6

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    new-array v5, v5, [F

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v6}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v6

    aput v6, v5, v4

    aput v2, v5, v3

    invoke-virtual {v1, v5}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->createPositionAnimator([F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$7;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$7;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v1

    iget-object v8, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v8}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    iget v8, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSlowSpeed:F

    div-float/2addr v1, v8

    float-to-long v8, v1

    cmp-long v1, v8, v6

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    new-array v10, v5, [F

    iget-object v11, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v11}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v11

    aput v11, v10, v4

    iget-object v11, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v11}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v11

    aput v11, v10, v3

    invoke-virtual {v1, v10}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->createPositionAnimator([F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v8, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$8;

    invoke-direct {v8, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$8;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v8

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v1

    int-to-long v10, v1

    sub-long/2addr v8, v10

    cmp-long v1, v8, v6

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    new-array v5, v5, [F

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v6}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v6

    aput v6, v5, v4

    aput v2, v5, v3

    invoke-virtual {v1, v5}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->createPositionAnimator([F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$9;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$9;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public attachGalleryState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
    .locals 0

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    return-void
.end method

.method protected createUrlMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pause-after-eof"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getControllerView()Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$layout;->layout_gallery_slow:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$id;->speed_controller:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getLeftSlidePosition()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getRightSlidePosition()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v5

    long-to-float v3, v5

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setCursorRange(FF)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mOnSpeedRangeChangedListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setOnSpeedRangeChangedListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;)V

    sget v1, Lcom/miui/video/galleryplus/R$id;->progress_controller:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setCursorPosition(F)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mOnProgressChangedListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setOnProgressChangedListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;)V

    return-object v0
.end method

.method public getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    return-object v0
.end method

.method protected onClickCancel()V
    .locals 1

    const-string v0, "slow_edit"

    invoke-static {v0}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportVideoCancel(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickCancel()V

    return-void
.end method

.method protected onClickOk()V
    .locals 9

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickOk()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v4}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v6}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move-wide v4, v0

    :cond_2
    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v6}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    const-wide/16 v2, 0x0

    :cond_3
    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v6}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v3, v4, v5}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->getSlowSavePath(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSavePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSavePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->getSlowSaveTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveTempPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveTempPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    :cond_4
    new-instance v6, Lorg/videolan/libvlc/MIPlayerTranscoder;

    sget-object v7, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_SLOW_MOTION:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-direct {v6, v7}, Lorg/videolan/libvlc/MIPlayerTranscoder;-><init>(Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;)V

    iput-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    new-instance v7, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$N_zUfRxy-OMUGbyDU5FEyOZ3ZA0;

    invoke-direct {v7, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$N_zUfRxy-OMUGbyDU5FEyOZ3ZA0;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v6, v7}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;)V

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    new-instance v7, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$uYjqA3m3PYj4b6bsM8dbP2IiZrc;

    invoke-direct {v7, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$uYjqA3m3PYj4b6bsM8dbP2IiZrc;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {v6, v7}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnErrorListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;)V

    const-string v6, "GallerySlowFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClickOk : leftpos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " rightPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " duration = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-virtual {v1, v2, v4, v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setTimePoint(FFF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveTempPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setInputOutput(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getFps()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setInputFps(I)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$bd8mbS2wFTR1d9vAz-BxzRafd0U;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GallerySlowFragment$bd8mbS2wFTR1d9vAz-BxzRafd0U;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showSlideSaveDialog(Landroid/content/Context;Landroid/view/View;Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method protected onClickPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPause()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected onClickPlay()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->isAlmostPlayComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->accurateSeekTo(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setCursorPosition(F)V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPlay()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->startAnim()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mPlayWhenResume:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->pause()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mPlayWhenResume:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mPlayWhenResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mPlayWhenResume:Z

    :cond_1
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    const/4 p1, 0x3

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mFirstBack:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->dismiss(Landroid/content/Context;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$string;->ai_music_save_success:I

    invoke-virtual {p0, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->completeSave(Z)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->runUIMessage(ILjava/lang/Object;J)V

    const-string p1, ""

    const-string p2, "failure"

    const-string p3, "slow_edit"

    invoke-static {p1, p2, p3}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportVideoSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    if-eqz p2, :cond_1

    iput-boolean v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveCompleted:Z

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSavePath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->notifyGallerySaveSuccess(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-virtual {p2, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->completeSave(Z)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->runUIMessage(ILjava/lang/Object;J)V

    const-string p1, ""

    const-string p2, "success"

    const-string p3, "slow_edit"

    invoke-static {p1, p2, p3}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportVideoSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    check-cast p3, Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mProgressController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setBitmapList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVideoPlayComplete()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onVideoPlayComplete()V

    const-string v0, "GallerySlowFragment"

    const-string v1, "onVideoPlayComplete"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onVideoPrepared()V
    .locals 5

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onVideoPrepared()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setSlowMotionTime(JJ)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p1, Lcom/miui/video/galleryplus/R$string;->gallery_video_slow_edit:I

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->setMenuText(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$LoadSeekBarTask;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$LoadSeekBarTask;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getFps()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x41f00000    # 30.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mSlowSpeed:F

    return-void
.end method
