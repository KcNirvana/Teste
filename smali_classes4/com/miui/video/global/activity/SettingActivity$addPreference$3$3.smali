.class final Lcom/miui/video/global/activity/SettingActivity$addPreference$3$3;
.super Ljava/lang/Object;
.source "SettingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$3;


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$3;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$3;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$3;

    iget-object p1, p1, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {p1}, Lcom/miui/video/global/activity/SettingActivity;->getMPrivacySwitch()Landroid/preference/CheckBoxPreference;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$3;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$3;

    iget-object p1, p1, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-static {p1}, Lcom/miui/video/global/activity/SettingActivity;->access$hideOnlinePreference(Lcom/miui/video/global/activity/SettingActivity;)V

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$3$3;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$3;

    iget-object p1, p1, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
