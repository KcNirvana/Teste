.class final Lcom/miui/antispam/ui/activity/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic UT:Lcom/miui/antispam/ui/activity/i;

.field final synthetic UU:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/i;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/N;->UT:Lcom/miui/antispam/ui/activity/i;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/N;->UU:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    check-cast p1, Lmiui/preference/RadioButtonPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/N;->UT:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/i;->TY(Lcom/miui/antispam/ui/activity/i;)Lmiui/preference/RadioButtonPreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/N;->UT:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->Ua(Lcom/miui/antispam/ui/activity/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/N;->UT:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/N;->UT:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v1

    const v3, 0x7f0700a4

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {v0, v6}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    return v6

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/N;->UT:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v3}, Lcom/miui/antispam/ui/activity/i;->TZ(Lcom/miui/antispam/ui/activity/i;)I

    move-result v3

    invoke-virtual {v1, v3}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/miui/antispam/ui/activity/N;->UU:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/N;->UU:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/miui/antispam/ui/activity/N;->UT:Lcom/miui/antispam/ui/activity/i;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/N;->UU:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/N;->UU:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v3, v1, v4, v5, p1}, Lcom/miui/antispam/ui/activity/i;->Ud(Lcom/miui/antispam/ui/activity/i;ILjava/lang/String;ILmiui/preference/RadioButtonPreference;)V

    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p1, v6}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    return v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
