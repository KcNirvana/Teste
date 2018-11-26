.class final Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToolbarItemClick(Landroid/view/View;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    xor-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
