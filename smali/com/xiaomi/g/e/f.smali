.class final Lcom/xiaomi/g/e/f;
.super Lcom/xiaomi/b/a/d/k$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/g/e/f;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/xiaomi/b/a/d/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/e/f;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
