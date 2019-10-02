.class public Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;
.super Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;
.source "GalleryMusicFragment.java"


# static fields
.field private static LOCAL_MUSIC_LIST_REQUEST_CODE:I = 0x1

.field private static final MSG_HIDE_DIALOG:I = 0x1

.field private static final MSG_RESET_FIRST_BACK:I = 0x2

.field private static PERCENT_RATE:F = 0.0245f

.field private static PLAY_VIDEO_DURATION:I = 0x2710

.field public static SAVE_VIDEO_DURATION:I = 0x730

.field private static SLOW_AREA:I = 0x104

.field private static final TAG:Ljava/lang/String; = "GalleryMusicFragment"


# instance fields
.field private mAacFileName:Ljava/lang/String;

.field private mAacFilePath:Ljava/lang/String;

.field private mFirstBack:Z

.field private mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

.field private volatile mIsCancelSave:Z

.field private mIsClickPlayVideo:Z

.field private mIsNeedMatchVideo:Z

.field private mIsNeedPlayWhenStart:Z

.field private mIsNew960Video:Z

.field private mIsPause:Z

.field private mMatchMusicManager:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

.field private mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

.field private mMusicFileValid:Z

.field private mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

.field private mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

.field private mTempMusicPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFileName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicFileValid:Z

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mFirstBack:Z

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNeedMatchVideo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsClickPlayVideo:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mTempMusicPath:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNew960Video:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNeedMatchVideo:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->startMiMusicList()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNeedMatchVideo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mFirstBack:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mFirstBack:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Lorg/videolan/libvlc/MIPlayerTranscoder;)Lorg/videolan/libvlc/MIPlayerTranscoder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsCancelSave:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsCancelSave:Z

    return p1
.end method

.method static synthetic access$1400()F
    .locals 1

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->PERCENT_RATE:F

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->SLOW_AREA:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->generateSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getMatchFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->initPreview()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->playVideo(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsClickPlayVideo:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->transcoderMusicResource(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mTempMusicPath:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->setLocalMusicFocus()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicFileValid:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->playVideoOnUIThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMatchMusicManager:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;)Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMatchMusicManager:Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->matchVideo(Ljava/lang/String;Z)V

    return-void
.end method

.method private generateSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z
    .locals 0

    invoke-static {}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->getInstance()Lcom/miui/extravideo/interpolation/VideoInterpolator;

    invoke-static/range {p1 .. p10}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z

    move-result p1

    return p1
.end method

.method private getMatchFileName()Ljava/lang/String;
    .locals 7

    const-string v0, "default"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->getSuperSlowSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_3

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_music_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPreview()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVisibility(I)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$5OASgHIOpSuCUghLCA4Dzf6bJeA;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$5OASgHIOpSuCUghLCA4Dzf6bJeA;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    const-string v1, "TOKEN_START_DECODER"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$PbgCQQwiHvXe8Rut3-4Mo7vJU6U;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$PbgCQQwiHvXe8Rut3-4Mo7vJU6U;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    const-string v1, "TOKEN_PREVIEW"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$hJqlq5d9I2Dko70ajCJ_ul6G5J0;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$hJqlq5d9I2Dko70ajCJ_ul6G5J0;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    const-string v1, "TOKEN_PAUSE_DECODER"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private initViewData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initViewAndData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->setOnMusicListStartListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;)V

    return-void
.end method

.method public static synthetic lambda$initPreview$21(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->startDecoder(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$initPreview$22(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setCurrentPosition(J)V

    return-void
.end method

.method public static synthetic lambda$initPreview$23(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->pauseDecoder(Ljava/lang/String;)V

    return-void
.end method

.method private matchVideo(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicFileValid:Z

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private playVideo(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsPause:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsClickPlayVideo:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;II)V

    const-wide/16 p1, 0x190

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playVideoOnUIThread(Ljava/lang/String;)V
    .locals 7

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "input-slave"

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFilePath:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getLeftPercent()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x420d999a    # 35.4f

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getLeftPercent()F

    move-result v0

    :goto_0
    sget v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->PERCENT_RATE:F

    mul-float v0, v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v4, v0

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->SAVE_VIDEO_DURATION:I

    if-le v4, v0, :cond_1

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->SAVE_VIDEO_DURATION:I

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_1
    sget v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->SLOW_AREA:I

    add-int/2addr v0, v4

    goto :goto_1

    :goto_2
    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNew960Video:Z

    if-eqz v0, :cond_2

    const-string v0, "slow-start-time"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slow-end-time"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "ai-slow-motion"

    const-string v1, "1"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pause-after-eof"

    const-string v1, "1"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Ljava/util/Map;II)V

    invoke-static {v6}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveNew960Video(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->getSuperSlowSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getMatchFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveOld960Video(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setLocalMusicFocus()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$9;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$9;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startMiMusicList()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->LOCAL_MUSIC_LIST_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "GalleryMusicFragment"

    const-string v1, "com.miui.player not found,try all picker"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->LOCAL_MUSIC_LIST_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "GalleryMusicFragment"

    const-string v1, "picker not found"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private transcoderMusicResource(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getMusicTransPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/videolan/libvlc/MIPlayerTranscoder;

    sget-object v2, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_TRANSTO_AAC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-direct {v1, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;-><init>(Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;)V

    invoke-virtual {v1, p1, v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setInputOutput(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$11;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$11;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V

    invoke-virtual {v1, p1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;)V

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$12;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$12;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    invoke-virtual {v1, p1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnErrorListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;)V

    invoke-virtual {v1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->transcoderVideo()I

    return-void
.end method


# virtual methods
.method public attachGalleryState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
    .locals 0

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isNew960Video()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNew960Video:Z

    :cond_0
    return-void
.end method

.method protected getControllerView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->setOnNotifyCanSaveListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->setOnPreviewSlideListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    return-object v0
.end method

.method public getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onActivityResult(IILandroid/content/Intent;)V

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->LOCAL_MUSIC_LIST_REQUEST_CODE:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$string;->gallery_video_local_music_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mAacFileName:Ljava/lang/String;

    const-string p1, "success"

    invoke-static {p1}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportMatchLocalMusicEvent(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->setBtnOkEnabled(Z)V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->matchVideo(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string p1, "failure"

    invoke-static {p1}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportMatchLocalMusicEvent(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onClickCancel()V
    .locals 1

    const-string v0, "super_slow_edit"

    invoke-static {v0}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportVideoCancel(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickCancel()V

    return-void
.end method

.method protected onClickOk()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickOk()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->cancelAdjustBarAnim()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    :cond_1
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showSlideSaveDialog(Landroid/content/Context;Landroid/view/View;Landroid/content/DialogInterface$OnKeyListener;)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNew960Video:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->saveNew960Video(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mSaveDialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->saveOld960Video(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V

    :goto_0
    return-void
.end method

.method protected onClickPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsClickPlayVideo:Z

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPause()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->cancelAdjustBarAnim()V

    :cond_0
    return-void
.end method

.method protected onClickPlay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsClickPlayVideo:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mGalleryState:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->playVideoOnUIThread(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mTempMusicPath:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->deleteTempMusic(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->onDestroy()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "GalleryMusicFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsPause:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->pauseAdjustBarAnim()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "GalleryMusicFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsPause:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->resumeAdjustBarAnim()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onStart()V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNeedPlayWhenStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicFileValid:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPlay()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNeedPlayWhenStart:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "GalleryMusicFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onStop()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onClickPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNeedPlayWhenStart:Z

    :cond_0
    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mFirstBack:Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$string;->ai_music_save_success:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->dismiss(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->finish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVideoPlayComplete()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onVideoPlayComplete()V

    const-string v0, "GalleryMusicFragment"

    const-string v1, "onVideoPlayComplete"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNew960Video:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$string;->gallery_video_operate_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->setMenuText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$string;->gallery_video_default_music_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->setMenuText(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mMusicView:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    iget-boolean p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsNew960Video:Z

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->updateView(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->initViewData()V

    return-void
.end method
