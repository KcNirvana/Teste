.class public Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "LandscapeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryController"
.end annotation


# instance fields
.field private mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

.field private final mContext:Landroid/content/Context;

.field private mLevel:I

.field private mPlugged:Z

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mPlugged:Z

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mLevel:I

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mPlugged:Z

    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mPlugged:Z

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mPlugged:Z

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->clear()V

    :cond_1
    const-string p1, "level"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mLevel:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mLevel:I

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;->setImageLevel(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    iget-boolean p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mPlugged:Z

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;->updateCharging(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$700(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->release()V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public update(Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
