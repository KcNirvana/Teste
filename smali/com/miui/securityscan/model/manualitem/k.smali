.class Lcom/miui/securityscan/model/manualitem/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic AO:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/k;->AO:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/k;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/c;->aHi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/c;->aHq(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/c;->aHj(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/c;->aHk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/k;->AO:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/common/b/c;->aHm(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->BC(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;J)J

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/k;->AO:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    invoke-static {v1}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->BB(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/k;->AO:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    invoke-static {v1}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->BB(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/k;->AO:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->BD(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;I)I

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/k;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
