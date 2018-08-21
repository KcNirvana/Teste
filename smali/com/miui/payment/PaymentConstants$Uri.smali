.class public Lcom/miui/payment/PaymentConstants$Uri;
.super Ljava/lang/Object;
.source "PaymentConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/PaymentConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uri"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.paymentassistant"

.field public static final BASE_URI:Ljava/lang/String; = "content://com.miui.paymentassistant/"

.field public static final PAYMENT_CARD_CONTENT:Ljava/lang/String; = "payment_card_content"

.field public static final PAYMENT_SOURCE_ENABLED:Ljava/lang/String; = "payment_source_enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
