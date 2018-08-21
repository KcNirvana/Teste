.class public Lcom/ali/user/mobile/rpc/vo/mobilegw/SendSmsGwReq;
.super Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;
.source "SendSmsGwReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appKey:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;-><init>()V

    return-void
.end method
