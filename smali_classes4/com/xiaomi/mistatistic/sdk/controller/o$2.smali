.class Lcom/xiaomi/mistatistic/sdk/controller/o$2;
.super Ljava/lang/Object;
.source "RegionDomainManager.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Ljava/lang/String;)Z

    return-void
.end method
