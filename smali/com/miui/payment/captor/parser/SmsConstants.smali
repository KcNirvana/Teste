.class public Lcom/miui/payment/captor/parser/SmsConstants;
.super Ljava/lang/Object;
.source "SmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/captor/parser/SmsConstants$Extras;
    }
.end annotation


# static fields
.field public static final BANK_CARD:I = 0x299

.field public static final CREDIT_CARD:I = 0x29c

.field public static final M_SMS_CAPTOR_TOKEN:Lcom/miui/payment/captor/CaptorToken;

.field public static final PACKAGE:Ljava/lang/String; = "com.miui.smsextra"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/payment/captor/CaptorToken;

    const-string/jumbo v1, "com.miui.smsextra"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/miui/payment/captor/CaptorToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/payment/captor/parser/SmsConstants;->M_SMS_CAPTOR_TOKEN:Lcom/miui/payment/captor/CaptorToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
