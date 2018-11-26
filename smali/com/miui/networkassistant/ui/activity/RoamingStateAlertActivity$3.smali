.class final Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;->finish()V

    return-void
.end method
