.class public Lcom/xiaomi/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/g/f;

.field private b:Lcom/xiaomi/g/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/g/f;Lcom/xiaomi/g/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/g/a$a;->a:Lcom/xiaomi/g/f;

    iput-object p2, p0, Lcom/xiaomi/g/a$a;->b:Lcom/xiaomi/g/b/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a$a;->a:Lcom/xiaomi/g/f;

    invoke-interface {v0, p1}, Lcom/xiaomi/g/f;->a(Lcom/xiaomi/f/b;)V

    return-void
.end method

.method public a(Lcom/xiaomi/g/c/d;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a$a;->b:Lcom/xiaomi/g/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/g/a$a;->b:Lcom/xiaomi/g/b/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/g/b/a;->a(Lcom/xiaomi/g/c/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/g/a$a;->a:Lcom/xiaomi/g/f;

    invoke-interface {v0, p1}, Lcom/xiaomi/g/f;->b(Lcom/xiaomi/g/c/d;)V

    :cond_1
    return-void
.end method
