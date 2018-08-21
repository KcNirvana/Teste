.class public Lcom/alipay/android/phone/mrpc/core/c/g$a;
.super Ljava/lang/Object;
.source "RpcSignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mrpc/core/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static c:Lcom/alipay/android/phone/mrpc/core/c/g$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->b:I

    return-void
.end method

.method public static final a()Lcom/alipay/android/phone/mrpc/core/c/g$a;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->c:Lcom/alipay/android/phone/mrpc/core/c/g$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/c/g$a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->c:Lcom/alipay/android/phone/mrpc/core/c/g$a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/c/g$a;->c:Lcom/alipay/android/phone/mrpc/core/c/g$a;

    return-object v0
.end method
