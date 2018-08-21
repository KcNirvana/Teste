.class public abstract Lcom/alipay/android/phone/inside/framework/service/AbstractInsideService;
.super Ljava/lang/Object;
.source "AbstractInsideService.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/inside/framework/service/a",
        "<TParams;TResult;>;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "inside"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/inside/framework/service/b",
            "<TResult;>;TParams;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/inside/framework/service/AbstractInsideService;->startForResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/inside/framework/service/AbstractInsideService;->start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V

    return-void
.end method
