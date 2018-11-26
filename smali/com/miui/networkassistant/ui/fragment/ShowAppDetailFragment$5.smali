.class final Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToolbarItemClick(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5$1;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
