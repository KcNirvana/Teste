.class public Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;
.super Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;
.source "CountryCodeRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public countryCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public index:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;-><init>()V

    return-void
.end method
