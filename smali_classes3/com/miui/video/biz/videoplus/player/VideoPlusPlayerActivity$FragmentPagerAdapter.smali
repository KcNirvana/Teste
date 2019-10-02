.class Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "VideoPlusPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentPagerAdapter"
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mContinuePlayPos:I

.field private mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

.field private mFirstEnterMediaPosition:I

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/IPlayerFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mPageList:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mContinuePlayPos:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mFirstEnterMediaPosition:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->onFragmentHide(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->onDestroy()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Lcom/miui/video/biz/videoplus/player/IPlayerFragment;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->getCurrentFragment()Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->setPlaypos(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->setFirstEnterMediaPosition(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->getAllFragment()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getAllFragment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/IPlayerFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mPageList:Ljava/util/List;

    return-object v0
.end method

.method private getCurrentFragment()Lcom/miui/video/biz/videoplus/player/IPlayerFragment;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    return-object v0
.end method

.method private getEntity(I)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->getEntityList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getEntityList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$1400(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private onFragmentHide(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->processFragmentHide(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    return-void
.end method

.method private onFragmentShow(ILcom/miui/video/biz/videoplus/player/IPlayerFragment;)V
    .locals 2

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$800(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->change(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$802(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->change(I)V

    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mFirstEnterMediaPosition:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$1100(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    invoke-interface {p2, v1}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->setContinuePlay(Z)V

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mFirstEnterMediaPosition:I

    :cond_3
    iget p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mContinuePlayPos:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    invoke-interface {p1, v1}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->setContinuePlay(Z)V

    :cond_4
    iput v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mContinuePlayPos:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$000(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$1200(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->processFragmentShow()V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private setFirstEnterMediaPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mFirstEnterMediaPosition:I

    return-void
.end method

.method private setPlaypos(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mContinuePlayPos:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    check-cast p3, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mPageList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 2

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_NOTE_4X:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$1302(Z)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->getEntityList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->getEntity(I)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/player/PlayerImageFragment;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->setPlayerActivity(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;)V

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$800(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$900(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "key_enter_transition"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$902(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$1000(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "key_auto_play"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$1002(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;Z)Z

    :cond_2
    const-string v1, "key_position"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->getEntity(I)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->setData(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mPageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mPageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    if-nez p1, :cond_0

    check-cast p3, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    invoke-direct {p0, p2, p3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->onFragmentShow(ILcom/miui/video/biz/videoplus/player/IPlayerFragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->mCurrentPage:Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    if-eq p1, p3, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->onFragmentHide(IZ)V

    check-cast p3, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    invoke-direct {p0, p2, p3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->onFragmentShow(ILcom/miui/video/biz/videoplus/player/IPlayerFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
