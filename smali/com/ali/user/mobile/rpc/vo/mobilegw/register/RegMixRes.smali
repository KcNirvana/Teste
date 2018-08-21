.class public Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;
.super Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;
.source "RegMixRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public checkCode:Ljava/lang/String;

.field public countryCodeResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;-><init>()V

    return-void
.end method
