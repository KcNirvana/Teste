.class final Lcom/miui/video/global/activity/SettingActivity$addPreference$1;
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

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {p1}, Lcom/miui/video/global/activity/SettingActivity;->getMHits()[J

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/miui/video/global/activity/SettingActivity;->getMHits()[J

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/miui/video/global/activity/SettingActivity;->getMHits()[J

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {p1}, Lcom/miui/video/global/activity/SettingActivity;->getMHits()[J

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/miui/video/global/activity/SettingActivity;->getMHits()[J

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v0

    return v2
.end method
