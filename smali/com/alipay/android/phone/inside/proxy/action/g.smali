.class Lcom/alipay/android/phone/inside/proxy/action/g;
.super Ljava/lang/Object;
.source "LoginOutAction.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/b;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

.field final synthetic b:Lcom/alipay/android/phone/inside/proxy/action/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/proxy/action/f;Lcom/alipay/android/phone/inside/commonbiz/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/action/g;->b:Lcom/alipay/android/phone/inside/proxy/action/f;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/proxy/action/g;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/g;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    return-void
.end method
