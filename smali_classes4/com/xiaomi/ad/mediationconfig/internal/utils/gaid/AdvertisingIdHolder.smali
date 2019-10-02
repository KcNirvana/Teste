.class public Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHolder;
.super Ljava/lang/Object;
.source "AdvertisingIdHolder.java"


# static fields
.field private static a:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    const-string v1, "google_advertising_id"

    invoke-direct {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHolder;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHolder;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    const-string v1, "google_advertising_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAdvertisingId(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHolder;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;

    const-string v1, "google_advertising_id"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/SharedPreferencesWrapper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
