.class Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;
.super Ljava/lang/Object;
.source "UIHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/UIHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$900(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$3;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$900(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->onUIShow()V

    :cond_0
    return-void
.end method
