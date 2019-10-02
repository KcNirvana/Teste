.class public Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;
.super Landroid/widget/ImageView;
.source "BatteryStatusIconView.java"


# instance fields
.field private mCharging:Z

.field private mDisabled:Z

.field private mEnableDarkMode:Z

.field private mIconLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mCharging:Z

    return-void
.end method


# virtual methods
.method public disable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mDisabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mDisabled:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->updateVisibility()V

    return-void
.end method

.method protected getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mCharging:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mEnableDarkMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mIconLevel:I

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getGraphicChargeIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mIconLevel:I

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getGraphicChargeIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mEnableDarkMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mIconLevel:I

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mIconLevel:I

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public setImageLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mIconLevel:I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->invalidate()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    return-void
.end method

.method public updateCharging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mCharging:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mIconLevel:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->setImageLevel(I)V

    return-void
.end method

.method protected updateVisibility()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->mDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->setVisibility(I)V

    return-void
.end method
