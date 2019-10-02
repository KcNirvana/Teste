.class final Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/preference/Preference;",
        "kotlin.jvm.PlatformType",
        "onPreferenceClick",
        "com/miui/video/global/activity/SettingActivity$addPreference$2$1"
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

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    const v3, 0x7f100347

    invoke-virtual {v2, v3}, Lcom/miui/video/global/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$1;

    invoke-direct {v3, p1}, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$1;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    move-object v6, v3

    check-cast v6, Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;

    invoke-direct {v3, p0, p1}, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;-><init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;Lcom/miui/video/global/activity/SettingActivity;)V

    move-object v7, v3

    check-cast v7, Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    const v4, 0x7f100050

    const v5, 0x7f10015e

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ZIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    const/4 p1, 0x1

    return p1
.end method
