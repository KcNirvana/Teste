.class public final Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$1;
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
        "com/miui/video/global/activity/SettingActivity$addPreference$2$1$1",
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


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$1;->$context:Lcom/miui/video/global/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1$1;->$context:Lcom/miui/video/global/activity/SettingActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
