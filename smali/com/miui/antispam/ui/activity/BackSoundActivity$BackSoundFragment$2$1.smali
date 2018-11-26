.class final Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;
.super Landroid/os/ResultReceiver;
.source ""


# instance fields
.field final synthetic UO:Lcom/miui/antispam/ui/activity/L;

.field final synthetic UP:I

.field final synthetic UQ:Lmiui/preference/RadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/L;Landroid/os/Handler;ILmiui/preference/RadioButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;->UO:Lcom/miui/antispam/ui/activity/L;

    iput p3, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;->UP:I

    iput-object p4, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;->UQ:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "TelephonyDebugTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallForwardingOption: resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;->UP:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;->UQ:Lmiui/preference/RadioButtonPreference;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;->UO:Lcom/miui/antispam/ui/activity/L;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->TW(Lcom/miui/antispam/ui/activity/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
