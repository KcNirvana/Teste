.class public Lcom/miui/gamebooster/service/GameBoxWindowManagerService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private lF:Landroid/hardware/display/DisplayManager;

.field private lG:Lcom/miui/gamebooster/d/a;

.field private lH:Lcom/miui/gamebooster/d/b;

.field private lI:Ljava/lang/String;

.field private lJ:Landroid/content/BroadcastReceiver;

.field private lK:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private lL:Ljava/lang/Runnable;

.field private lM:Ljava/lang/Runnable;

.field private lN:I

.field private lO:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

.field private lP:I

.field public lQ:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/service/u;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/u;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lM:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/v;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/v;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lL:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/w;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/w;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lJ:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/x;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/x;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lK:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic oA(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lG:Lcom/miui/gamebooster/d/a;

    return-object v0
.end method

.method static synthetic oB(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    return-object v0
.end method

.method static synthetic oC(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic oD(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lN:I

    return v0
.end method

.method static synthetic oE(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lP:I

    return v0
.end method

.method static synthetic oF(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->ox()V

    return-void
.end method

.method static synthetic oG(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oy()V

    return-void
.end method

.method static synthetic oH(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oz()V

    return-void
.end method

.method private ox()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->removeFloatView()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uK()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->createFloatView()V

    :cond_0
    return-void
.end method

.method private oy()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->removeFloatView()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0, v1, v1}, Lcom/miui/gamebooster/d/b;->uH(ZZ)V

    :cond_0
    return-void
.end method

.method private oz()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lG:Lcom/miui/gamebooster/d/a;

    invoke-virtual {v1}, Lcom/miui/gamebooster/d/a;->uy()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lG:Lcom/miui/gamebooster/d/a;

    invoke-static {p0}, Lcom/miui/gamebooster/a/H;->ip(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/d/a;->uz(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    const/4 v0, 0x1

    const-string/jumbo v1, "GameBoxWindowManagerService"

    const-string/jumbo v2, "onBind"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "intent_gamebooster_window_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lP:I

    new-instance v1, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    iput-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lO:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lP:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.FREEFORM_WINDOW_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lJ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lF:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lF:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lK:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lO:Lcom/miui/gamebooster/service/GameBoxWindowManagerService$GameBoosterWindowBinder;

    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lM:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    new-instance v0, Lcom/miui/gamebooster/d/b;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/d/b;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    const-string/jumbo v0, "intent_booster_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lI:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/miui/gamebooster/a/H;->ip(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lN:I

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lL:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/miui/gamebooster/d/a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/d/a;-><init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    iput-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lG:Lcom/miui/gamebooster/d/a;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lG:Lcom/miui/gamebooster/d/a;

    iget v2, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lN:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/d/a;->uz(Z)V

    const-string/jumbo v0, "GameBoxWindowManagerService"

    const-string/jumbo v1, "WINDOWTYPE_FIRSTENTERDIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string/jumbo v0, "GameBoxWindowManagerService"

    const-string/jumbo v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lP:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lJ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lF:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lK:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lM:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->removeFloatView()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lH:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uK()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lG:Lcom/miui/gamebooster/d/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/a;->uy()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
