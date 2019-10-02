.class public Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicDownloadToDo;,
        Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;,
        Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;,
        Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ITEM_COUNT:I = 0x7

.field public static final MATCH_MUSIC_FILE:I = 0x2

.field public static final MATCH_MUSIC_LOCAL:I = 0x1

.field public static final MATCH_MUSIC_NONE:I = 0x0

.field private static final POSITION_HAPPY:I = 0x5

.field private static final POSITION_MORNING:I = 0x3

.field private static final POSITION_MUSIC:I = 0x1

.field private static final POSITION_NONE:I = 0x0

.field private static final POSITION_PREVIOUS:I = 0x4

.field private static final POSITION_WARM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GalleryMusicAdapter"


# instance fields
.field private DEFAULT_FOCUS:I

.field private mAnimMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Landroid/animation/ObjectAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalMusicHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

.field private mMusicListStartListener:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;

.field private mMusicStatusRunnable:Ljava/lang/Runnable;

.field private mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

.field private mPreHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

.field private mStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mUseDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->DEFAULT_FOCUS:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDownloadingSet:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mStatusMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mAnimMap:Ljava/util/Map;

    new-instance v1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$1;

    invoke-direct {v3, p0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mUseDefault:Z

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$3;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mMusicStatusRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mUseDefault:Z

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-direct {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->handleMusicClick(ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mStatusMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->notifyViewUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private getMusicDownloadUrl(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDownloadingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mStatusMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://i.mi.com/gallery/public/resource/download?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;Ljava/lang/String;I)V

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;->get()Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;->loadMusicDownloadUrl(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private handleMusicClick(ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportSelectMusicName(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->updateMusicItem(ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V

    const-string p1, ""

    invoke-direct {p0, p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->noneMusic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->updateMusicItem(ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V

    const-string p1, ""

    invoke-direct {p0, p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->selectMusic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_2

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mLocalMusicHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->startMusicList()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDownloadingSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getSha1Base16()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getMusicDownloadStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->updateMusicItem(ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getMusicAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->useMusicFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-direct {p0, v0, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->startDownloadAnim(Ljava/lang/String;Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V

    invoke-direct {p0, v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->getMusicDownloadUrl(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget p2, Lcom/miui/video/galleryplus/R$string;->v_network_failed:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method

.method private isUseCNLanguage()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private noneMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;->notifyMatch(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyViewUpdate(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDownloadingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mAnimMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    sget v2, Lcom/miui/video/galleryplus/R$drawable;->gallery_music_download_complete:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/video/base/common/task/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private selectMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;->notifyMatch(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startDownloadAnim(Ljava/lang/String;Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V
    .locals 3

    iget-object v0, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatus:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/galleryplus/R$drawable;->gallery_music_downloading:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatus:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatus:Landroid/widget/ImageView;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mAnimMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private startMusicList()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mMusicListStartListener:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mMusicListStartListener:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;->startMusicList()V

    :cond_0
    return-void
.end method

.method private updateMusicDownloadStatus(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getSha1Base16()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mStatusMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getMusicDownloadStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateMusicItem(ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mPreHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mPreHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicFocus:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mPreHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicFocus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mPreHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->DEFAULT_FOCUS:I

    return-void
.end method

.method private useMusicFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;->notifyMatch(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mAnimMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mAnimMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mAnimMap:Ljava/util/Map;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->onBindViewHolder(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;I)V
    .locals 10

    const-string v0, "GalleryMusicAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder mUseDefault "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mUseDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->DEFAULT_FOCUS:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, p2, :cond_0

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicFocus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mPreHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicFocus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->DEFAULT_FOCUS:I

    const/4 v4, 0x1

    if-ne v3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mImageLayout:Landroid/view/View;

    new-instance v3, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_2

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_no_music:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_no_music_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_2
    if-ne p2, v4, :cond_3

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_default_music:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_default_music_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_4

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_local_music:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_local_music_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_4
    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mUseDefault:Z

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v0, :cond_9

    if-ne p2, v7, :cond_5

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_warm_default:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_item3_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-ne p2, v6, :cond_6

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_morning_default:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_item4_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    if-ne p2, v5, :cond_7

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_previous_default:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_item5_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    if-ne p2, v3, :cond_8

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_happy_default:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_item6_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    iget-object v8, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->isUseCNLanguage()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getText()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p2, v7, :cond_b

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget v3, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_warm_default:I

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    :cond_b
    if-ne p2, v6, :cond_c

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget v3, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_morning_default:I

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    :cond_c
    if-ne p2, v5, :cond_d

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget v3, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_previous_default:I

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    :cond_d
    if-ne p2, v3, :cond_e

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget v3, Lcom/miui/video/galleryplus/R$drawable;->gallery_video_happy_default:I

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_e
    :goto_4
    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mStatusMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_10

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatus:Landroid/widget/ImageView;

    sget p2, Lcom/miui/video/galleryplus/R$drawable;->gallery_music_downloading:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v7, :cond_12

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_11
    :goto_5
    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatus:Landroid/widget/ImageView;

    sget p2, Lcom/miui/video/galleryplus/R$drawable;->gallery_music_download:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_12
    :goto_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/video/galleryplus/R$layout;->item_gallery_music:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;-><init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setLocalMusicFocus()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mLocalMusicHolder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->updateMusicItem(ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V

    :cond_0
    return-void
.end method

.method public setNotifyCanSaveListener(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mNotify:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;

    return-void
.end method

.method public setOnMusicListStartListener(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mMusicListStartListener:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mUseDefault:Z

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;-><init>()V

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-direct {v1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;-><init>()V

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-direct {v2}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;-><init>()V

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/galleryplus/R$string;->gallery_video_no_music_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/miui/video/galleryplus/R$string;->gallery_video_default_music_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_local_music_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->updateMusicDownloadStatus(Ljava/util/List;)V

    :cond_2
    return-void
.end method
