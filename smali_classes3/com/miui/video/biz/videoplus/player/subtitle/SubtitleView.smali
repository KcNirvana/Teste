.class public Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SubtitleView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;
.implements Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;
.implements Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;


# static fields
.field private static final BODY_DIVIDE_SHADOW_X:I = 0x1e

.field private static final BODY_DIVIDE_SHADOW_Y:I = 0xf

.field private static final LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHADOW_COLOR:I = -0x4ce2d7c0

.field private static final SHADOW_RADIUS:I = 0x2

.field private static TAG:Ljava/lang/String; = "SubtitleView"


# instance fields
.field private mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

.field private mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

.field private mClearTextRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDrainTimedText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;

.field private mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

.field private mFontColorIndex:I

.field private mFontSizeIndex:I

.field private mHeight:I

.field private mInnerSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSubtitleSurfaceFullscreen:Z

.field private mIsTextureViewCreate:Z

.field private mLoadSubTitleRunnable:Ljava/lang/Runnable;

.field private mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

.field private mSelectedAudioTrack:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

.field private mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

.field private mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

.field private mSubtExtraDelayRunnable:Ljava/lang/Runnable;

.field private mSubtitleOffset:J

.field private mSubtitleSurface:Landroid/view/SurfaceView;

.field private mSubtitleSurfaceTexture:Landroid/view/TextureView;

.field private mTextIdx:J

.field private mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

.field private mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\[(.+)]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mDrainTimedText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAudioTracks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextIdx:J

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleOffset:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mIsTextureViewCreate:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mIsSubtitleSurfaceFullscreen:Z

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mWidth:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mHeight:I

    new-instance v1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$3;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtExtraDelayRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$4;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mLoadSubTitleRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$7;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$7;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mDrainTimedText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;

    invoke-virtual {v1, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->setSubtitleTextListener(Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleTextListener;)V

    new-instance v1, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    invoke-direct {v1, p1}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setGravity(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    invoke-virtual {p0, v2, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Build.VERSION.SDK_INT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "BuildV9.DEVICE\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    const-string v2, "mSubtitleSurface init "

    invoke-static {v0, v2}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->useSurfaceForImageSub()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x50

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    sget-boolean p1, Lcom/miui/video/framework/miui/Build;->IS_F10:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/miui/video/framework/miui/Build;->IS_F1:Z

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$2;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mCallback:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mIsTextureViewCreate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/base/database/LocalVideoEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Lcom/miui/video/base/database/LocalVideoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->loadExtraSubtitleFile(Lcom/miui/video/base/database/LocalVideoEntity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;)[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    return-object p0
.end method

.method private clearSubtitle()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    const-string v1, " clearSubtitle "

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mDrainTimedText:Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainTimedText;->clearTimedText()V

    return-void
.end method

.method private static extractLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->LANGUAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method private isExtraSubtitleEffective(Lcom/miui/video/base/database/LocalVideoEntity;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getExtraSubtitlePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  extraSubtitlePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private loadExtraSubtitleFile(Lcom/miui/video/base/database/LocalVideoEntity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getExtraSubtitlePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    const-string v1, "application/x-subrip"

    new-instance v2, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$5;

    invoke-direct {v2, p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$5;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;)V

    return-void
.end method

.method private showSubtitleText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static useSurfaceForImageSub()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_F10:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_F1:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    const-string v1, "application/x-subrip"

    new-instance v2, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;

    invoke-direct {v2, p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;-><init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;)V

    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAudioTracks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getSelectedTrack(I)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->getId()I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->setSelected(Z)V

    iput-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedAudioTrack:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSubtitleFontColorIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mFontColorIndex:I

    return v0
.end method

.method public getSubtitleFontSizeIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mFontSizeIndex:I

    return v0
.end method

.method public getSubtitleTracks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getSelectedTrack(I)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPosInTrack()I

    move-result v4

    if-ne v4, v1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setSelected(Z)V

    iput-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setSelected(Z)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTextSurface()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    return-object v0
.end method

.method public loadFinishAndSelectTrack()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getCurrentSubtitlePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " loadFinishAndSelectTrack currentSubtitlePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPosInTrack()I

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPosInTrack()I

    move-result v3

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPosInTrack()I

    move-result v5

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {p0, v5}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v5, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    instance-of v3, v3, Ljava/lang/NumberFormatException;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {p0, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setSelected(Z)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v3}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getTimeOffset()I

    move-result v4

    sget-object v5, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " timeoffset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v5, v4

    invoke-virtual {p0, v5, v6}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->setSubtitleTimedTextDelay(J)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setTimeoffset(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    const-string v1, " error ExtraSubtitleTrack null"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mHeight:I

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mWidth:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mHeight:I

    mul-int v0, v0, p1

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mWidth:I

    div-int/2addr v0, v1

    const/16 v1, 0x51

    invoke-direct {p2, p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurfaceTexture:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->invalidate()V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mIsSubtitleSurfaceFullscreen:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$dimen;->top_bar_height_landscape:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public onMediaPlayerCreated(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    return-void
.end method

.method public onMediaPlayerReleased()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->clearSubtitle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    return-void
.end method

.method public onSubtitleData(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mClearTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onTimedText(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/misc/ITimedText;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;-><init>()V

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextIdx:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextIdx:J

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextIdx:J

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;->setIdx(J)V

    invoke-interface {p2}, Ltv/danmaku/ijk/media/player/misc/ITimedText;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;->setStartTime(J)V

    invoke-interface {p2}, Ltv/danmaku/ijk/media/player/misc/ITimedText;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;->setDuration(J)V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;-><init>()V

    invoke-interface {p2}, Ltv/danmaku/ijk/media/player/misc/ITimedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->setText(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;->setType(I)V

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/DrainSubText;->setSubData(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleData;)V

    invoke-interface {p2}, Ltv/danmaku/ijk/media/player/misc/ITimedText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->showSubtitleText(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p4, 0x0

    aget p4, v0, p4

    const/4 v1, 0x4

    aget v0, v0, v1

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-static {p4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->setScaleY(F)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr p4, v1

    invoke-virtual {p0, p4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->setTranslationX(F)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    sub-float/2addr p3, p4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p1

    mul-float p2, p2, v0

    add-float/2addr p3, p2

    invoke-virtual {p0, p3}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->setTranslationY(F)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    const-string p2, " scaleX Float.POSITIVE_INFINITY "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    const-string p2, " scaleX Float.NaN "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPrepared()V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object v0

    const-string v1, "subtitle_font_size"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->setSubtitleFontSizeIndex(I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object v0

    const-string v1, "subtitle_font_color_index"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->setSubtitleFontColorIndex(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAudioTracks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mExtraSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$array;->lang_detect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAllTracks:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    aget-object v4, v4, v1

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    new-instance v5, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    invoke-direct {v5}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;-><init>()V

    invoke-virtual {v5, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->setId(I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->getInstance()Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;

    move-result-object v6

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->extractLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v5, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->setLanguage(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    new-instance v5, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-direct {v5}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;-><init>()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->getInstance()Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;

    move-result-object v6

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->extractLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v5, v4, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setLanguageAndType(Ljava/lang/String;I)V

    invoke-virtual {v5, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setPosInTrack(I)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mInnerSubtitleTracks:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->isExtraSubtitleEffective(Lcom/miui/video/base/database/LocalVideoEntity;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtExtraDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mLoadSubTitleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public refreshSurface(Z)V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->useSurfaceForImageSub()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mIsSubtitleSurfaceFullscreen:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSurface fullscreen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->top_bar_height_landscape:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedAudioTrack:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedAudioTrack:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedAudioTrack:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->setSelected(Z)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->setSelected(Z)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedAudioTrack:Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->selectTrack(I)V

    :cond_3
    return-void
.end method

.method public selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setSelected(Z)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setSelected(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->clearSubtitle()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSelectedSubtitleTrack:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPosInTrack()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->selectTrack(I)V

    :cond_2
    return-void
.end method

.method public setSubTrackSaveManager(Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    return-void
.end method

.method public setSubtitleCallback(Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mCallback:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mIsTextureViewCreate:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mCallback:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;->onSurfaceTextureViewCreated()V

    :cond_0
    return-void
.end method

.method public setSubtitleFontColorIndex(I)V
    .locals 3

    if-ltz p1, :cond_1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/PlayerConstant;->SUBTITLE_FONT_COLOR:[Ljava/lang/Integer;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mFontColorIndex:I

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object v0

    const-string v1, "subtitle_font_color_index"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mFontColorIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/player/PlayerConstant;->SUBTITLE_FONT_COLOR:[Ljava/lang/Integer;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setTextColor(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitleFontSizeIndex(I)V
    .locals 4

    if-ltz p1, :cond_1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/PlayerConstant;->SUBTITLE_FONT_SIZE:[Ljava/lang/Integer;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mFontSizeIndex:I

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object v0

    const-string v1, "subtitle_font_size"

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mFontSizeIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->saveInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/video/biz/videoplus/player/PlayerConstant;->SUBTITLE_FONT_SIZE:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    int-to-float v2, p1

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->clearOuterShadows()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mTextView:Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;

    const/high16 v1, 0x40000000    # 2.0f

    div-int/lit8 v2, p1, 0x1e

    int-to-float v2, v2

    div-int/lit8 p1, p1, 0xf

    int-to-float p1, p1

    const v3, -0x4ce2d7c0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/miui/video/biz/videoplus/player/widget/MagicTextView;->addOuterShadow(FFFI)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitleTimedTextDelay(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubtitleOffset:J

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setSubtitleTimedTextDelay(J)V

    :cond_0
    return-void
.end method

.method public setVideoEntity(Lcom/miui/video/base/database/LocalVideoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mSubVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    return-void
.end method

.method public setVideoPath(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->mHeight:I

    return-void
.end method
