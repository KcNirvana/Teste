.class public Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShareChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;,
        Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareChannelAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mOnItemClickListener:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;

.field private mShareChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mShareChannelList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mShareChannelList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mShareChannelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->onBindViewHolder(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mShareChannelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->getView()Lcom/miui/video/biz/videoplus/app/share/ShareItemView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->setData(Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;
    .locals 2

    new-instance p1, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;-><init>(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mOnItemClickListener:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;

    return-void
.end method
