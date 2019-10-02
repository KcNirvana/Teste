.class Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShareChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

.field view:Lcom/miui/video/biz/videoplus/app/share/ShareItemView;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->this$0:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    instance-of p1, p2, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->view:Lcom/miui/video/biz/videoplus/app/share/ShareItemView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->view:Lcom/miui/video/biz/videoplus/app/share/ShareItemView;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/share/-$$Lambda$ShareChannelAdapter$ViewHolder$OYGk3Ml5bGG8CZx5UkMOfJOcYhQ;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/share/-$$Lambda$ShareChannelAdapter$ViewHolder$OYGk3Ml5bGG8CZx5UkMOfJOcYhQ;-><init>(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/share/ShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->this$0:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mOnItemClickListener:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->this$0:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->mOnItemClickListener:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->this$0:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->access$000(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-interface {v0, p1, v1}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Lcom/miui/video/biz/videoplus/app/share/ShareItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$ViewHolder;->view:Lcom/miui/video/biz/videoplus/app/share/ShareItemView;

    return-object v0
.end method
