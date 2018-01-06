.class Lcom/xiaomi/h/g;
.super Lcom/xiaomi/push/service/bb$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/h/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/h/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/h/g;->a:Lcom/xiaomi/h/f;

    invoke-direct {p0}, Lcom/xiaomi/push/service/bb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/d/b$b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/push/d/b$b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/h/f;->a()Lcom/xiaomi/h/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/d/b$b;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/h/f;->a(I)V

    :cond_0
    return-void
.end method
