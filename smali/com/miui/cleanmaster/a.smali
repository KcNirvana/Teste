.class public Lcom/miui/cleanmaster/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic bxA(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/cleanmaster/a;->bxx(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bxv(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/miui/cleanmaster/a;->bxx(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/cleanmaster/f;

    invoke-direct {v0, p0, p1}, Lcom/miui/cleanmaster/f;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/miui/cleanmaster/b;->bxC(Landroid/content/Context;Lcom/miui/cleanmaster/InstallCallBack;)V

    goto :goto_0
.end method

.method public static bxw(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/miui/cleanmaster/a;->bxy(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/cleanmaster/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/cleanmaster/g;-><init>(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/miui/cleanmaster/b;->bxC(Landroid/content/Context;Lcom/miui/cleanmaster/InstallCallBack;)V

    goto :goto_0
.end method

.method private static bxx(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static bxy(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic bxz(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/cleanmaster/a;->bxy(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
