.class Lcom/miui/video/common/feed/UIRecyclerListView$1;
.super Ljava/lang/Object;
.source "UIRecyclerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/UIRecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/UIRecyclerListView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$000(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView$1;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$000(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->onUIShow()V

    :cond_0
    return-void
.end method
