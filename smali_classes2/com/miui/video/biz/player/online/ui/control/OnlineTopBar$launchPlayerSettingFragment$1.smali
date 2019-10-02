.class final Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar$launchPlayerSettingFragment$1;
.super Ljava/lang/Object;
.source "OnlineTopBar.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar;->launchPlayerSettingFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;)V
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onKey"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic $settingPresenter:Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar$launchPlayerSettingFragment$1;->$settingPresenter:Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar$launchPlayerSettingFragment$1;->$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar$launchPlayerSettingFragment$1;->$settingPresenter:Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar$launchPlayerSettingFragment$1;->$activity:Landroid/support/v4/app/FragmentActivity;

    check-cast p3, Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v0}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->onAdjustVolumeByMovementY(Landroid/content/Context;F)V

    :cond_0
    return p1

    :pswitch_1
    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar$launchPlayerSettingFragment$1;->$settingPresenter:Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineTopBar$launchPlayerSettingFragment$1;->$activity:Landroid/support/v4/app/FragmentActivity;

    check-cast p3, Landroid/content/Context;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p3, v0}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->onAdjustVolumeByMovementY(Landroid/content/Context;F)V

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
