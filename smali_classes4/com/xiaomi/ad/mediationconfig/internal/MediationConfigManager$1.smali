.class final Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;
.super Ljava/lang/Object;
.source "MediationConfigManager.java"

# interfaces
.implements Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getCloudConfig(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;->a:Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetConfig(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1$1;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
