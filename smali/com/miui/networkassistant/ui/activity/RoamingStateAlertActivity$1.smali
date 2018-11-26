.class final Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method
