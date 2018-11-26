.class final Lcom/miui/networkassistant/ui/activity/FirewallActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/FirewallActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/FirewallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
