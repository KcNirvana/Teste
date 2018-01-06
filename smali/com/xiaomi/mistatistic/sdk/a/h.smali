.class Lcom/xiaomi/mistatistic/sdk/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:Lcom/xiaomi/mistatistic/sdk/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:Lcom/xiaomi/mistatistic/sdk/a/g;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Lcom/xiaomi/mistatistic/sdk/a/g;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/i;-><init>(Lcom/xiaomi/mistatistic/sdk/a/h;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Landroid/content/Context;Lcom/xiaomi/mistatistic/sdk/a/aa$b;)V

    return-void
.end method
