.class public Lcom/alipay/android/phone/inside/security/c;
.super Ljava/lang/Object;
.source "PkgValidityCheck.java"


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/inside/security/c;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/alipay/android/phone/inside/security/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/security/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getPackageValidityCheckComp()Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;->getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
