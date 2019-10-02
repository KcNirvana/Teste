.class public Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;
.super Landroid/widget/FrameLayout;
.source "GalleryMusicView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;
    }
.end annotation


# static fields
.field public static final FOCUS_MUSIC_STATUS_DEFALUT:I = 0x1

.field public static final FOCUS_MUSIC_STATUS_FILE:I = 0x2

.field public static final FOCUS_MUSIC_STATUS_NO:I = 0x0

.field private static final MUSIC_DATA_URL:Ljava/lang/String; = "https://i.mi.com/gallery/public/resource/info/v2?nameSpace=mivideo&group=mivideo&key=mivideo"

.field public static final PERCENT_NORMAL_AREA:F = 64.6f

.field public static final PERCENT_SUPER_SLOW_AREA:F = 35.4f

.field public static final SHOW_ADJUST_LAYOUT:I = 0x1

.field public static final SHOW_MUSIC_LAYOUT:I = 0x2

.field private static final SLOW_PLAY_RATE:I = 0x20

.field public static final TAB_ADJUST:I = 0x64

.field public static final TAB_MUSIC:I = 0x65

.field private static final TAG:Ljava/lang/String; = "GalleryMusicView"


# instance fields
.field private mAdjustBar:Landroid/view/View;

.field private mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

.field private mAdjustLayout:Landroid/view/View;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstClickMusic:Z

.field private mIsNew960Video:Z

.field private mLayoutView:Landroid/view/View;

.field private mMusic:Landroid/widget/RadioButton;

.field private mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

.field private mMusicList:Landroid/support/v7/widget/RecyclerView;

.field private mMusicListStartListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;

.field private mMusicStatus:I

.field private mNotifyListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

.field private mOnPreviewListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

.field private mOperateLayout:Landroid/widget/RadioGroup;

.field private mProgressAnimator:Landroid/animation/AnimatorSet;

.field private mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

.field private mVideoAdjust:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mDataList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsFirstClickMusic:Z

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsNew960Video:Z

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicStatus:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mDataList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsFirstClickMusic:Z

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsNew960Video:Z

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicStatus:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mDataList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsFirstClickMusic:Z

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsNew960Video:Z

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicStatus:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mOnPreviewListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mNotifyListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicListStartListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    return-object p0
.end method

.method private initAdjustLayoutData(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private initMusicViewData()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GalleryMusicView"

    const-string v1, "initMusicViewData network disconnect can\'t get music resources"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->updateData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const-string v0, "https://i.mi.com/gallery/public/resource/info/v2?nameSpace=mivideo&group=mivideo&key=mivideo"

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$6;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$6;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;->get()Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;->loadMusicData(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$layout;->layout_gallery_music:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->music_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_operate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mOperateLayout:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_adjust:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mVideoAdjust:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_music:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusic:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_adjust_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_speed_controller:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_adjust_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_adjust_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustBar:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    const/4 v2, 0x1

    const v3, 0x420d999a    # 35.4f

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setRangeType(IF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mSpeedController:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    const v4, 0x42813333    # 64.6f

    invoke-virtual {v0, v4, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setCursorRange(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setCursorType(IF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v0, v4}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setCursorPosition(F)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setOnProgressChangedListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mOperateLayout:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$2;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->setOnMusicListStartListener(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->setNotifyCanSaveListener(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$4;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public cancelAdjustBarAnim()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public getLeftPercent()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorPosition()F

    move-result v0

    return v0
.end method

.method public getMusicStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicStatus:I

    return v0
.end method

.method public initViewAndData(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initAdjustLayoutData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initMusicViewData()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    sget p1, Lcom/miui/video/galleryplus/R$id;->gallery_video_adjust:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->showView(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/video/galleryplus/R$id;->gallery_video_music:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->showView(I)V

    invoke-static {}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportMusicTabClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->cancelAdjustBarAnim()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->destroy()V

    :cond_0
    return-void
.end method

.method public pauseAdjustBarAnim()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_0
    return-void
.end method

.method public resumeAdjustBarAnim()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    return-void
.end method

.method public setBitmapList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setBitmapList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setLocalMusicFocus()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicAdapter:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->setLocalMusicFocus()V

    :cond_0
    return-void
.end method

.method public setOnMusicListStartListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicListStartListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;

    return-void
.end method

.method public setOnNotifyCanSaveListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mNotifyListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    return-void
.end method

.method public setOnPreviewSlideListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mOnPreviewListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    return-void
.end method

.method public showView(I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsFirstClickMusic:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsFirstClickMusic:Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mNotifyListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mNotifyListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/galleryplus/R$string;->gallery_video_default_music_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;->notifyMatchMusicByLocal(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsNew960Video:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mOperateLayout:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$dimen;->dp_39:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mMusicList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startAdjustBarAnim(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLength()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getSlowLength()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLength()F

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getSlowLength()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLength()F

    move-result v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLeftLength()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLength()F

    move-result v3

    neg-float v3, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLeftLength()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLeftLength()F

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getSlowLength()F

    move-result v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustController:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLength()F

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustBar:Landroid/view/View;

    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v0, v8, v9

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustBar:Landroid/view/View;

    const-string v5, "translationX"

    new-array v6, v7, [F

    aput v1, v6, v10

    aput v2, v6, v9

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sub-int p1, p2, p1

    mul-int/lit8 p1, p1, 0x20

    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->SAVE_VIDEO_DURATION:I

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mAdjustBar:Landroid/view/View;

    const-string v0, "translationX"

    new-array v1, v7, [F

    aput v2, v1, v10

    aput v3, v1, v9

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->SAVE_VIDEO_DURATION:I

    sub-int/2addr v0, p2

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mProgressAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public updateView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->mIsNew960Video:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->showView(I)V

    :cond_0
    return-void
.end method
