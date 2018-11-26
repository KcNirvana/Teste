.class final Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/network/e;->aLR(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;->finish()V

    return-void
.end method
