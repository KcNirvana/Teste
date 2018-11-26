.class final Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5$1;->this$1:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5$1;->this$1:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    return-void
.end method
