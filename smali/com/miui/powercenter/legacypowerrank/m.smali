.class final Lcom/miui/powercenter/legacypowerrank/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRc(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v6

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRa(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/miui/common/b/k;->aIx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v6, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRa(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/miui/a/d/a/a;->btX(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRa(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/a/d/a/a;->btY(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/m;->aGj:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aRa(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    new-instance v3, Lcom/miui/powercenter/legacypowerrank/n;

    invoke-direct {v3, p0}, Lcom/miui/powercenter/legacypowerrank/n;-><init>(Lcom/miui/powercenter/legacypowerrank/m;)V

    const/4 v5, 0x0

    move v4, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/a/d/a/a;->btY(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
