.class public Lcom/xiaomi/passport/servicetoken/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataMd5Digest([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/Coder;->getDataMd5Digest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/Coder;->getHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/Coder;->getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
