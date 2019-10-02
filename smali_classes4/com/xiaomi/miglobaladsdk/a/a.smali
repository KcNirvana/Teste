.class public Lcom/xiaomi/miglobaladsdk/a/a;
.super Ljava/lang/Object;
.source "ConfigBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/miglobaladsdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Z

.field public m:Lcom/xiaomi/miglobaladsdk/a/a$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->a(Lcom/xiaomi/miglobaladsdk/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->a:I

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->b(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->c(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->d(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->e(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->f:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->f(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->g(Lcom/xiaomi/miglobaladsdk/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->g:I

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->h(Lcom/xiaomi/miglobaladsdk/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->h:Z

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->i(Lcom/xiaomi/miglobaladsdk/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->i:I

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->j(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->k(Lcom/xiaomi/miglobaladsdk/a/a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->k:I

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->l(Lcom/xiaomi/miglobaladsdk/a/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->l:Z

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a;->m:Lcom/xiaomi/miglobaladsdk/a/a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/miglobaladsdk/a/a;)I
    .locals 1
    .param p1    # Lcom/xiaomi/miglobaladsdk/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/xiaomi/miglobaladsdk/a/a;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->f:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/xiaomi/miglobaladsdk/a/a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a;->a(Lcom/xiaomi/miglobaladsdk/a/a;)I

    move-result p1

    return p1
.end method
