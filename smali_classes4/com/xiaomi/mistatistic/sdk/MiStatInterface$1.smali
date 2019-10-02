.class final Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;
.super Ljava/lang/Object;
.source "MiStatInterface.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/xiaomi/mistatistic/sdk/MiStatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatException;->printStackTrace()V

    :goto_0
    return-void
.end method
