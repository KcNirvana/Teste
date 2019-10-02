.class public final Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;
.super Ljava/lang/Object;
.source "SettingActivity.kt"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingActivity.kt\ncom/miui/video/global/activity/SettingActivity$addPreference$2$1$2$onClick$1\n*L\n1#1,294:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005\u00b8\u0006\u0000"
    }
    d2 = {
        "com/miui/video/global/activity/SettingActivity$addPreference$2$1$2$onClick$1",
        "Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;",
        "onLogoutFail",
        "",
        "onLogoutSuccess",
        "globalvideo_gpRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoutFail()V
    .locals 2

    const-string v0, "VideoMiAccountManager"

    const-string v1, "logout fail"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;

    iget-object v0, v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->$context:Lcom/miui/video/global/activity/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method

.method public onLogoutSuccess()V
    .locals 2

    const-string v0, "VideoMiAccountManager"

    const-string v1, "logout success"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;

    iget-object v0, v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/miui/video/global/activity/SettingActivity;->getMLogoutPreference()Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;

    iget-object v0, v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/miui/video/global/activity/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;

    iget-object v1, v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;->this$0:Lcom/miui/video/global/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/miui/video/global/activity/SettingActivity;->getMLogoutPreference()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;

    iget-object v0, v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->$context:Lcom/miui/video/global/activity/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
