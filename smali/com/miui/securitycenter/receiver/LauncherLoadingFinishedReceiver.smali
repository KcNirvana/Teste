.class public Lcom/miui/securitycenter/receiver/LauncherLoadingFinishedReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static aXz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.miui.home.intent.action.LOADING_FINISHED"

    sput-object v0, Lcom/miui/securitycenter/receiver/LauncherLoadingFinishedReceiver;->aXz:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/miui/securitycenter/a;->bsf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "LauncherLoadingFinishedReceiver"

    const-string/jumbo v1, " isLauncherLoadingFinished is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p2, :cond_4

    sget-object v0, Lcom/miui/securitycenter/receiver/LauncherLoadingFinishedReceiver;->aXz:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "LauncherLoadingFinishedReceiver"

    const-string/jumbo v1, " Receiver launcher\'s broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KK:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p1, v0}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;->KK:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p1, v0}, Lcom/miui/securityscan/shortcut/a;->LV(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)V

    const-string/jumbo v0, "LauncherLoadingFinishedReceiver"

    const-string/jumbo v1, "Create cleanmaster shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/securitycenter/a;->bsq(Landroid/content/Context;Z)V

    :cond_4
    return-void
.end method
