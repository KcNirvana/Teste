.class public Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;
.super Lcom/ali/user/mobile/rpc/vo/mobilegw/ToString;
.source "UserLogoutGWReq.java"


# static fields
.field private static final serialVersionUID:J = -0x262f9c13d571d32aL


# instance fields
.field public clientId:Ljava/lang/String;

.field public externParams:Ljava/util/Map;
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

.field public logonId:Ljava/lang/String;

.field public logoutType:Ljava/lang/String;

.field public mspClientKey:Ljava/lang/String;

.field public mspImei:Ljava/lang/String;

.field public mspImsi:Ljava/lang/String;

.field public mspTid:Ljava/lang/String;

.field public walletClientKey:Ljava/lang/String;

.field public walletTid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/ToString;-><init>()V

    return-void
.end method
