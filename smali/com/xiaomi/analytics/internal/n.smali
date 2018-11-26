.class final Lcom/xiaomi/analytics/internal/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/analytics/internal/g;


# instance fields
.field final synthetic bon:Lcom/xiaomi/analytics/internal/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/n;->bon:Lcom/xiaomi/analytics/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bLR(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/n;->bon:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMh(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v1, "download finished, use new analytics."

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/n;->bon:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMI(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/a/a;->bKo()V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/n;->bon:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/o;->bMn(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/n;->bon:Lcom/xiaomi/analytics/internal/o;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/n;->bon:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->bMh(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/o;->bMH(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/n;->bon:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMg(Lcom/xiaomi/analytics/internal/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/j;->bLl(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
