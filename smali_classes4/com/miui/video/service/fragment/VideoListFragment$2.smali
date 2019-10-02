.class Lcom/miui/video/service/fragment/VideoListFragment$2;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/miui/video/common/feed/IUIRecyclerCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/fragment/VideoListFragment;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/fragment/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/service/fragment/VideoListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$2;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 1

    const/16 v0, 0x66

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/miui/video/service/fragment/VideoListFragment$2$1;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/miui/video/service/fragment/VideoListFragment$2$1;-><init>(Lcom/miui/video/service/fragment/VideoListFragment$2;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$2;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/miui/video/service/fragment/VideoListFragment;->access$200(Lcom/miui/video/service/fragment/VideoListFragment;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->setUILongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
