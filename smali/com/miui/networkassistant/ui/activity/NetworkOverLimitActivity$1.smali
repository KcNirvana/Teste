.class final Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->-get0(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
