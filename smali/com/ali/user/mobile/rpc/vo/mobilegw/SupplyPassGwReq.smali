.class public Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;
.super Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;
.source "SupplyPassGwReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public optionStatus:Z

.field public paymentPassword:Ljava/lang/String;

.field public queryPassword:Ljava/lang/String;

.field public simplePassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;-><init>()V

    return-void
.end method
