.class public Lcom/miui/gamebooster/a/w;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hA(Landroid/content/Context;Landroid/content/pm/IPackageInstallObserver;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    const-class v1, Landroid/content/pm/IPackageInstallObserver;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string/jumbo v2, "com.xiaomi.gamecenter"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    :try_start_0
    const-string/jumbo v2, "miui.content.pm.PreloadedAppPolicy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "installPreloadedDataApp"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hB(Lcom/miui/gamebooster/gbservices/k;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static hC()V
    .locals 0

    return-void
.end method

.method public static hy(Landroid/content/Context;Z)V
    .locals 2

    const-string/jumbo v0, "com.xiaomi.gamecenter"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/a/a;->eO(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/gamebooster/a/P;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/a/P;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/gamebooster/a/w;->hA(Landroid/content/Context;Landroid/content/pm/IPackageInstallObserver;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.xiaomi.gamecenter"

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x5b8d800

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07099c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static hz(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method
