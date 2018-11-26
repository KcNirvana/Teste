.class final Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;->finish()V

    return-void
.end method
