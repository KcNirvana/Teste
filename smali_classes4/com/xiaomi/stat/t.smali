.class Lcom/xiaomi/stat/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/r;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/t;->a:Lcom/xiaomi/stat/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/c/j;->a()Lcom/xiaomi/stat/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/j;->c()V

    invoke-static {}, Lcom/xiaomi/stat/c/j;->a()Lcom/xiaomi/stat/c/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/c/j;->a(Z)V

    return-void
.end method
