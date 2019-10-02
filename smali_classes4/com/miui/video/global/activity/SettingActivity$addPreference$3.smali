.class final Lcom/miui/video/global/activity/SettingActivity$addPreference$3;
.super Ljava/lang/Object;
.source "SettingActivity.kt"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/activity/SettingActivity;->addPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "preference",
        "Landroid/preference/Preference;",
        "kotlin.jvm.PlatformType",
        "newValue",
        "",
        "onPreferenceChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    check-cast p1, Landroid/content/Context;

    new-instance p2, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$1;

    invoke-direct {p2, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$1;-><init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$3;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$2;

    invoke-direct {v0, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$2;-><init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$3;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-static {p1, p2, v0}, Lcom/miui/video/base/utils/PrivacyUtils;->openNonMIUIPrivacyDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    check-cast p1, Landroid/content/Context;

    new-instance p2, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$3;

    invoke-direct {p2, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$3;-><init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$3;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$4;

    invoke-direct {v0, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$4;-><init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$3;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-static {p1, p2, v0}, Lcom/miui/video/base/utils/PrivacyUtils;->openNonMIUIRevokePrivacyDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-static {p2}, Lcom/miui/video/global/activity/SettingActivity;->access$getREQUEST_PRIVACY_CODE$p(Lcom/miui/video/global/activity/SettingActivity;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/video/base/utils/PrivacyUtils;->openMIUIPrivacyDialog(Landroid/app/Activity;I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
