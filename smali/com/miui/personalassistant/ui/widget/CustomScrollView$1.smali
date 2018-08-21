.class Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;
.super Landroid/os/Handler;
.source "CustomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/widget/CustomScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->access$000(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->access$002(Lcom/miui/personalassistant/ui/widget/CustomScrollView;I)I

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->access$100(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->access$100(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->access$200(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;->this$0:Lcom/miui/personalassistant/ui/widget/CustomScrollView;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->access$200(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;->onScroll(I)F

    :cond_1
    return-void
.end method
