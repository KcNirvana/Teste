.class final Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;
.super Ljava/lang/Object;
.source "FragmentLauncherUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->launchPlayerSettingFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/SettingPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$presenter:Lcom/miui/video/player/service/presenter/SettingPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/SettingPresenter;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;->val$presenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;->val$presenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustVolumeByMovementY(Landroid/content/Context;F)V

    return p1

    :pswitch_1
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;->val$presenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p3, v0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustVolumeByMovementY(Landroid/content/Context;F)V

    return p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
