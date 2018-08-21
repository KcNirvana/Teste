.class public Lcom/alipay/android/phone/inside/commonbiz/a/b;
.super Ljava/lang/Object;
.source "SdkActionFactory.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/inside/commonbiz/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/a/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/a/a;

    return-object v0
.end method

.method public static a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/alipay/android/phone/inside/commonbiz/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
