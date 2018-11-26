.class public Lcom/miui/powercenter/powersaver/PowerSaverProvider;
.super Landroid/content/ContentProvider;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private baz(Z)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/powercenter/powersaver/b;->baw(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/powercenter/powersaver/b;->bay(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/powercenter/powersaver/b;->bat(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/powercenter/powersaver/b;->bau(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "POWER_SAVE_MODE_OPEN"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/miui/powercenter/powersaver/a;->baq(I)V

    const-string/jumbo v2, "PowerSaverProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Open power save mode, battery percent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baS(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/miui/powercenter/powersaver/b;->baw(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/miui/powercenter/powersaver/b;->bay(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/miui/powercenter/powersaver/b;->bat(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/miui/powercenter/powersaver/b;->bau(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "POWER_SAVE_MODE_OPEN"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v1

    const-string/jumbo v2, "PowerSaverProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Close power save mode, battery percent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/miui/powercenter/powersaver/a;->baq(I)V

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/16 v2, 0x14

    const/16 v1, 0xa

    const-string/jumbo v0, "changePowerMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "POWER_SAVE_MODE_OPEN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->baz(Z)V

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LOW_BATTERY_DIALOG"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    if-le v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdz()V

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdA(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdB()V

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdA(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "showLowBatteryDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    if-le v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdC()V

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdD()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/powercenter/b/b;->bdE()V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
