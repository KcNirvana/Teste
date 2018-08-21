.class public Lcom/alipay/android/barcode/BarcodePlugin;
.super Ljava/lang/Object;
.source "BarcodePlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;
    }
.end annotation


# static fields
.field public static final SCAN_CODE_SERVICE:Ljava/lang/String; = "SCAN_CODE_SERVICE"

.field public static final SCAN_CODE_SERVICE_V2:Ljava/lang/String; = "SCAN_CODE_SERVICE_V2"


# instance fields
.field final mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/inside/framework/service/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/barcode/BarcodePlugin;->mServices:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/barcode/BarcodePlugin;->mServices:Ljava/util/Map;

    const-string/jumbo v1, "SCAN_CODE_SERVICE"

    new-instance v2, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;-><init>(Lcom/alipay/android/barcode/BarcodePlugin;Lcom/alipay/android/barcode/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/barcode/BarcodePlugin;->mServices:Ljava/util/Map;

    const-string/jumbo v1, "SCAN_CODE_SERVICE_V2"

    new-instance v2, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/barcode/broadcast/LogoutBroadCastReceiver;

    invoke-direct {v1}, Lcom/alipay/android/barcode/broadcast/LogoutBroadCastReceiver;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/barcode/BarcodePlugin;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/framework/service/a;

    return-object v0
.end method

.method public getServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/inside/framework/service/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/barcode/BarcodePlugin;->mServices:Ljava/util/Map;

    return-object v0
.end method

.method public onRegisted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onUnRegisted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
