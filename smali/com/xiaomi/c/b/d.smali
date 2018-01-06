.class public Lcom/xiaomi/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/xiaomi/c/d/n;

.field private b:Lcom/xiaomi/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/b/d;->b:Lcom/xiaomi/c/a/a;

    return-void
.end method

.method public a(Lcom/xiaomi/c/d/n;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/b/d;->a:Lcom/xiaomi/c/d/n;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/c/b/d;->a:Lcom/xiaomi/c/d/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/c/b/d;->b:Lcom/xiaomi/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/c/b/d;->a:Lcom/xiaomi/c/d/n;

    iget-object v1, p0, Lcom/xiaomi/c/b/d;->b:Lcom/xiaomi/c/a/a;

    invoke-interface {v0, v1}, Lcom/xiaomi/c/d/n;->a(Lcom/xiaomi/c/a/a;)V

    :cond_0
    const-string v0, "begin write perf / event"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    return-void
.end method
