.class public Lcom/xiaomi/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/a/k$a;


# direct methods
.method private b(Lcom/xiaomi/a/a/b/a;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/k;->a:Lcom/xiaomi/a/k$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/k;->a:Lcom/xiaomi/a/k$a;

    sget-object v1, Lcom/xiaomi/a/k$a;->a:Lcom/xiaomi/a/k$a;

    if-ne v0, v1, :cond_1

    const-string v0, "privacy_policy"

    const-string v1, "privacy_no"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "privacy_policy"

    const-string v1, "privacy_user"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/a/a/b/a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/a/k;->b(Lcom/xiaomi/a/a/b/a;)V

    :cond_0
    return-void
.end method
