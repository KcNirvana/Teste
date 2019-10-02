.class Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer$1;
.super Ljava/lang/Object;
.source "MediationConfigServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer$1;->a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer$1;->a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;J)J

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer$1;->a:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigServer;)V

    return-void
.end method
