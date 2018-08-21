.class public final Lcom/alipay/android/phone/inside/main/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/inside/main/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static exception_network_error_check_network:I

.field public static exception_network_error_retry:I

.field public static exception_network_error_wait_retry:I

.field public static exception_network_slow:I

.field public static exception_too_many_people_wait_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/alipay/android/inside/sdk/R$string;->exception_network_error_check_network:I

    sput v0, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_check_network:I

    sget v0, Lcom/alipay/android/inside/sdk/R$string;->exception_network_error_retry:I

    sput v0, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_retry:I

    sget v0, Lcom/alipay/android/inside/sdk/R$string;->exception_network_error_wait_retry:I

    sput v0, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_wait_retry:I

    sget v0, Lcom/alipay/android/inside/sdk/R$string;->exception_network_slow:I

    sput v0, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_slow:I

    sget v0, Lcom/alipay/android/inside/sdk/R$string;->exception_too_many_people_wait_retry:I

    sput v0, Lcom/alipay/android/phone/inside/main/R$string;->exception_too_many_people_wait_retry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
