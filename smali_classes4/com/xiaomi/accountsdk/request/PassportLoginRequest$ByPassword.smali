.class public Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;
.super Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByPassword"
.end annotation


# instance fields
.field private final mmetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private final serviceId:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->serviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->mmetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->mmetaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->serviceId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected getLoginType()Ljava/lang/String;
    .locals 1

    const-string v0, "byPassword"

    return-object v0
.end method

.method protected makeCARequest(Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportCARequest;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;

    invoke-direct {v0, p2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    new-instance p2, Lcom/xiaomi/accountsdk/request/PassportCARequest;

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/accountsdk/request/PassportCARequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)V

    return-object p2
.end method

.method protected makeHttpsRequest(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;-><init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    return-object v0
.end method
