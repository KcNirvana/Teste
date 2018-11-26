.class final Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
