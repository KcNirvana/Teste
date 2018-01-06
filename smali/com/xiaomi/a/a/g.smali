.class Lcom/xiaomi/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/a/a/j$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/a/a/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/g;->a:Lcom/xiaomi/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/g;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SdkManager"

    const-string v1, "download finished, use new analytics."

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/g;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->i(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/a/a/b/a;->b()V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/a/a/g;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)Lcom/xiaomi/a/a/b/a;

    iget-object v0, p0, Lcom/xiaomi/a/a/g;->a:Lcom/xiaomi/a/a/d;

    iget-object v1, p0, Lcom/xiaomi/a/a/g;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v1}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/d;->c(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/a/a/g;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
