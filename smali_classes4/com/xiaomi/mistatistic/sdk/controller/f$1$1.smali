.class Lcom/xiaomi/mistatistic/sdk/controller/f$1$1;
.super Ljava/lang/Object;
.source "ConfigProvider.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/f$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/f$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/f$1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/f$1;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/xiaomi/mistatistic/sdk/MiStatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatException;->printStackTrace()V

    :goto_0
    return-void
.end method
