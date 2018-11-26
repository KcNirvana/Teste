.class public Lcom/miui/luckymoney/ui/activity/BasePreferenceActivity;
.super Lmiui/preference/PreferenceActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    invoke-static {}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/BasePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/BasePreferenceActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
