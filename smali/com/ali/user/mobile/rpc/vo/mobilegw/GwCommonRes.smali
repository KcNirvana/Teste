.class public Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;
.super Lcom/ali/user/mobile/rpc/vo/mobilegw/ToString;
.source "GwCommonRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public memo:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;

.field public resultStatus:I

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/ToString;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->resultStatus:I

    return-void
.end method
