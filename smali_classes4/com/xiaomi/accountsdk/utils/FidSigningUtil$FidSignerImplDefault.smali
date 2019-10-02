.class public final Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerImplDefault;
.super Ljava/lang/Object;
.source "FidSigningUtil.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidSigningUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FidSignerImplDefault"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSign()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public sign([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;
        }
    .end annotation

    return-object p1
.end method
