.class public Lcom/alipay/android/barcode/rpc/QueryBuyerReq;
.super Ljava/lang/Object;
.source "QueryBuyerReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dynamicId:Ljava/lang/String;

.field public extInfos:Ljava/lang/String;

.field public final reqSourceInnerCode:Ljava/lang/String;

.field public final shakeType:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ALIPAY_INSIDE"

    iput-object v0, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerReq;->reqSourceInnerCode:Ljava/lang/String;

    const-string/jumbo v0, "bar_code"

    iput-object v0, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerReq;->shakeType:Ljava/lang/String;

    return-void
.end method
