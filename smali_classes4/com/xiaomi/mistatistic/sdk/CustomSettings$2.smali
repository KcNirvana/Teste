.class final Lcom/xiaomi/mistatistic/sdk/CustomSettings$2;
.super Ljava/lang/Object;
.source "CustomSettings.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setDataUploadingEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()V

    :cond_0
    return-void
.end method
