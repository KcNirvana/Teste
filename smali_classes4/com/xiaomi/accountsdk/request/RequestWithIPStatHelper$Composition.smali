.class public final Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;
.super Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.source "RequestWithIPStatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation


# instance fields
.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackupIpFailed(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onBackupIpFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackupIpStarted(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onBackupIpStarted(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackupIpSucceeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onBackupIpSucceeded(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCachedIpFailed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onCachedIpFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCachedIpStarted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onCachedIpStarted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCachedIpSucceed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onCachedIpSucceed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDnsIp0Failed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsIp0Failed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDnsIp0Succeed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsIp0Succeed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDnsResolvingFinished(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsResolvingFinished(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDnsResolvingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsResolvingStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDnsip0Started(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsip0Started(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHostNameRequestFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onHostNameRequestFinished(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHostNameRequestStarted()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onHostNameRequestStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIpRequest200Succeed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequest200Succeed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIpRequestFailed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequestFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIpRequestIOSucceed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequestIOSucceed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIpRequestStarted()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequestStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method
