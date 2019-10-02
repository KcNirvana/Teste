.class public Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UGCVideoAdapter.java"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final onStateChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;",
            "Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->onStateChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/video/biz/ugc/card/UGCVideoViewHolder;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object p1, p1, Lcom/miui/video/biz/ugc/card/UGCVideoViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->setData(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;-><init>(Landroid/content/Context;)V

    const-string p1, "mv://Linker?deeplink=market%3A//details%3Fid%3Dcom.uc.vmate%26referrer%3Dutm_content%253Dclick_id%25253A26la46t49377568334073c243facb722%25253Bby%25253Avmate_ucunion%2526utm_source%253Dxumin1%40mivideovmate%252523"

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->setCPLink(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->onStateChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->setOnStatusChangeListener(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;)V

    const-string p1, "ui_ugc_video"

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->setTag(Ljava/lang/Object;)V

    new-instance p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/miui/video/biz/ugc/card/UGCVideoViewHolder;

    invoke-direct {p1, p2}, Lcom/miui/video/biz/ugc/card/UGCVideoViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
