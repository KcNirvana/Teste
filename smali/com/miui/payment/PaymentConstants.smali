.class public Lcom/miui/payment/PaymentConstants;
.super Ljava/lang/Object;
.source "PaymentConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/PaymentConstants$Bundle;,
        Lcom/miui/payment/PaymentConstants$ContentValues;,
        Lcom/miui/payment/PaymentConstants$Uri;,
        Lcom/miui/payment/PaymentConstants$Method;,
        Lcom/miui/payment/PaymentConstants$Currency;,
        Lcom/miui/payment/PaymentConstants$CaptorSource;,
        Lcom/miui/payment/PaymentConstants$Alipay;,
        Lcom/miui/payment/PaymentConstants$Wechat;,
        Lcom/miui/payment/PaymentConstants$MmsExtra;
    }
.end annotation


# static fields
.field public static final PKG_ASSISTANT:Ljava/lang/String; = "com.miui.personalassistant"

.field public static final PRIVACY_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/config/PALog;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/miui/payment/PaymentConstants;->PRIVACY_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
