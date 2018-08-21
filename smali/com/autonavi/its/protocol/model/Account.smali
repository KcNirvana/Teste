.class public Lcom/autonavi/its/protocol/model/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mPSW:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/Account;->mAccount:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/its/protocol/model/Account;->mPSW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/Account;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/Account;->mPSW:Ljava/lang/String;

    return-object v0
.end method
