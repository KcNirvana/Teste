.class public Lcom/xiaomi/push/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/b/a/c/b;


# instance fields
.field private a:Lcom/xiaomi/b/a/c/b;

.field private b:Lcom/xiaomi/b/a/c/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/b/a/c/b;Lcom/xiaomi/b/a/c/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/b/e;->a:Lcom/xiaomi/b/a/c/b;

    iput-object v0, p0, Lcom/xiaomi/push/b/e;->b:Lcom/xiaomi/b/a/c/b;

    iput-object p1, p0, Lcom/xiaomi/push/b/e;->a:Lcom/xiaomi/b/a/c/b;

    iput-object p2, p0, Lcom/xiaomi/push/b/e;->b:Lcom/xiaomi/b/a/c/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/b/e;->a:Lcom/xiaomi/b/a/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/b/e;->a:Lcom/xiaomi/b/a/c/b;

    invoke-interface {v0, p1}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/b/e;->b:Lcom/xiaomi/b/a/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/b/e;->b:Lcom/xiaomi/b/a/c/b;

    invoke-interface {v0, p1}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/b/e;->a:Lcom/xiaomi/b/a/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/b/e;->a:Lcom/xiaomi/b/a/c/b;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/b/e;->b:Lcom/xiaomi/b/a/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/b/e;->b:Lcom/xiaomi/b/a/c/b;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
