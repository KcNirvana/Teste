.class final Lcom/miui/antispam/ui/activity/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UL:Lcom/miui/antispam/ui/activity/i;

.field final synthetic UM:I

.field final synthetic UN:Lmiui/preference/RadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/i;ILmiui/preference/RadioButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    iput p2, p0, Lcom/miui/antispam/ui/activity/L;->UM:I

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/L;->UN:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v5, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;

    iget v0, p0, Lcom/miui/antispam/ui/activity/L;->UM:I

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/L;->UN:Lmiui/preference/RadioButtonPreference;

    invoke-direct {v5, p0, v4, v0, v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$2$1;-><init>(Lcom/miui/antispam/ui/activity/L;Landroid/os/Handler;ILmiui/preference/RadioButtonPreference;)V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    iget v1, p0, Lcom/miui/antispam/ui/activity/L;->UM:I

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/activity/i;->Uc(Lcom/miui/antispam/ui/activity/i;I)V

    iget v0, p0, Lcom/miui/antispam/ui/activity/L;->UM:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "*730"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/util/h;->XY(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "*9013800000000"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/util/h;->XY(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "*9013810538911"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/util/h;->XY(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "*9013701110216"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/util/h;->XY(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "13800000000"

    iget v1, p0, Lcom/miui/antispam/ui/activity/L;->UM:I

    packed-switch v1, :pswitch_data_1

    move-object v3, v0

    :goto_1
    const-string/jumbo v0, "TelephonyDebugTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCallForwardingOption "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v6}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    move v1, v2

    :goto_2
    iget v6, p0, Lcom/miui/antispam/ui/activity/L;->UM:I

    if-nez v6, :cond_2

    :goto_3
    iget v6, p0, Lcom/miui/antispam/ui/activity/L;->UM:I

    if-nez v6, :cond_3

    :goto_4
    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lmiui/telephony/TelephonyManagerEx;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v0, "13693164946"

    move-object v3, v0

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "18710276054"

    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/L;->UL:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    goto :goto_3

    :cond_3
    move-object v4, v3

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
