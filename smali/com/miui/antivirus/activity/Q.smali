.class final Lcom/miui/antivirus/activity/Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic atA:Lcom/miui/antivirus/activity/P;

.field final synthetic atB:Lcom/miui/guardprovider/aidl/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/P;Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iput-object p2, p0, Lcom/miui/antivirus/activity/Q;->atB:Lcom/miui/guardprovider/aidl/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x0

    const v0, 0x7f07072b

    const v6, 0x7f0705c2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/antivirus/activity/Q;->atB:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget v1, v1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akC:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v1, v1, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v1, v1, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v1, v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayU(Lcom/miui/antivirus/activity/SettingsActivity;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v0, v0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v0, v0, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayO(Lcom/miui/antivirus/activity/SettingsActivity;)Lcom/miui/antivirus/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/antivirus/activity/Q;->atB:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v1, v1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/antivirus/k;->aEj(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v0, v0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v0, v0, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayO(Lcom/miui/antivirus/activity/SettingsActivity;)Lcom/miui/antivirus/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/antivirus/k;->aEk(J)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v0, v0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v0, v0, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayN(Lcom/miui/antivirus/activity/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v1, v1, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v1, v1, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    iget-object v2, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v2, v2, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v2, v2, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/antivirus/activity/Q;->atB:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v4, v4, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8, v9}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/antivirus/activity/SettingsActivity;->ayQ(Lcom/miui/antivirus/activity/SettingsActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f07072a

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v0, v0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v0, v0, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayO(Lcom/miui/antivirus/activity/SettingsActivity;)Lcom/miui/antivirus/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/antivirus/activity/Q;->atB:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v1, v1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/antivirus/k;->aEj(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v0, v0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v0, v0, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayO(Lcom/miui/antivirus/activity/SettingsActivity;)Lcom/miui/antivirus/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/antivirus/k;->aEk(J)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v0, v0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v0, v0, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayN(Lcom/miui/antivirus/activity/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v1, v1, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v1, v1, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    iget-object v2, p0, Lcom/miui/antivirus/activity/Q;->atA:Lcom/miui/antivirus/activity/P;

    iget-object v2, v2, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v2, v2, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/antivirus/activity/Q;->atB:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v4, v4, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Lcom/miui/antivirus/activity/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8, v9}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/antivirus/activity/SettingsActivity;->ayQ(Lcom/miui/antivirus/activity/SettingsActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f07072c

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
