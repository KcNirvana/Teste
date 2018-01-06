.class Lcom/xiaomi/b/a/d/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/b/a/d/k$b;

.field final synthetic b:Lcom/xiaomi/b/a/d/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/b/a/d/k;Lcom/xiaomi/b/a/d/k$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/a/d/m;->b:Lcom/xiaomi/b/a/d/k;

    iput-object p2, p0, Lcom/xiaomi/b/a/d/m;->a:Lcom/xiaomi/b/a/d/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/d/m;->b:Lcom/xiaomi/b/a/d/k;

    iget-object v1, p0, Lcom/xiaomi/b/a/d/m;->a:Lcom/xiaomi/b/a/d/k$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/d/k;->a(Lcom/xiaomi/b/a/d/k$b;)V

    return-void
.end method
