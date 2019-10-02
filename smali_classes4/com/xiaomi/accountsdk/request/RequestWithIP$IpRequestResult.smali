.class Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;
.super Ljava/lang/Object;
.source "RequestWithIP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/RequestWithIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IpRequestResult"
.end annotation


# instance fields
.field stringContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

.field timeSpent:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->stringContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    return-void
.end method
