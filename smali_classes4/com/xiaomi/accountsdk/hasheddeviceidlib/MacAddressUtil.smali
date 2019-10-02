.class public final Lcom/xiaomi/accountsdk/hasheddeviceidlib/MacAddressUtil;
.super Ljava/lang/Object;
.source "MacAddressUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MacAddressUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HardwareInfo;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
