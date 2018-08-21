.class public final Lcom/alipay/android/phone/inside/cashier/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/inside/cashier/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static alipay_hw_buildmodle:I

.field public static alipay_push_prop:I

.field public static msp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/alipay/android/inside/sdk/R$raw;->alipay_hw_buildmodle:I

    sput v0, Lcom/alipay/android/phone/inside/cashier/R$raw;->alipay_hw_buildmodle:I

    sget v0, Lcom/alipay/android/inside/sdk/R$raw;->alipay_push_prop:I

    sput v0, Lcom/alipay/android/phone/inside/cashier/R$raw;->alipay_push_prop:I

    sget v0, Lcom/alipay/android/inside/sdk/R$raw;->msp:I

    sput v0, Lcom/alipay/android/phone/inside/cashier/R$raw;->msp:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
