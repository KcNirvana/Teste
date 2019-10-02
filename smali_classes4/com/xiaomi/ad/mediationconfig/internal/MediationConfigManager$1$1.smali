.class Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1$1;
.super Ljava/lang/Object;
.source "MediationConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;->onGetConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1$1;->b:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;

    iput-object p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1$1;->b:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;

    iget-object v0, v0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;->a:Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;->onConfig(Ljava/lang/String;)V

    return-void
.end method
