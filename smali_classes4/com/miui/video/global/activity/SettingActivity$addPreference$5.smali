.class final Lcom/miui/video/global/activity/SettingActivity$addPreference$5;
.super Ljava/lang/Object;
.source "SettingActivity.kt"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/preference/Preference;",
        "kotlin.jvm.PlatformType",
        "onPreferenceClick"
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

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$5;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "push_message_switch_key"

    iget-object v1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$5;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/miui/video/global/activity/SettingActivity;->getMPushMessageSwitch()Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$5;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {p1}, Lcom/miui/video/global/activity/SettingActivity;->getMPushMessageSwitch()Landroid/preference/CheckBoxPreference;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/video/service/push/MiPushManager;->onSwitchMiPush(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mv://Setting?PushMessageSwitch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$5;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/miui/video/global/activity/SettingActivity;->getMPushMessageSwitch()Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/uri/CEntitys;->getLinkEntity(Ljava/lang/String;)Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object p1

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PushMessageSwitch"

    invoke-virtual {p1, v0}, Lcom/miui/video/framework/uri/LinkEntity;->setRef(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v0

    sget-object v1, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_CLICK:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method
