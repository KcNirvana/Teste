.class Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;
.super Ljava/lang/Object;
.source "AssistListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistListScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Lcom/miui/home/launcher/assistant/ui/view/AssistListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)V

    return-void
.end method

.method private updateStatusBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$1002(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/util/StatusBarUtil;->hideStatusBar(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->updateStatusBar(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;Landroid/widget/AbsListView;I)V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->updateStatusBar(Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistListView$AssistListScrollListener;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/AssistListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
