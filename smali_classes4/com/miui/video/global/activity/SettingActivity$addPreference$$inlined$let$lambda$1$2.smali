.class public final Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;
.super Ljava/lang/Object;
.source "SettingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/miui/video/global/activity/SettingActivity$addPreference$2$1$2",
        "Landroid/view/View$OnClickListener;",
        "onClick",
        "",
        "v",
        "Landroid/view/View;",
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
.field final synthetic $context:Lcom/miui/video/global/activity/SettingActivity;

.field final synthetic this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;Lcom/miui/video/global/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->this$0:Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;

    iput-object p2, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;->$context:Lcom/miui/video/global/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object p1

    new-instance v0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;

    invoke-direct {v0, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2$1;-><init>(Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$2;)V

    check-cast v0, Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->logout(Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;)V

    return-void
.end method
