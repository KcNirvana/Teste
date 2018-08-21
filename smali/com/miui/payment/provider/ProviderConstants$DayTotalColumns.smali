.class public final Lcom/miui/payment/provider/ProviderConstants$DayTotalColumns;
.super Ljava/lang/Object;
.source "ProviderConstants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/provider/ProviderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayTotalColumns"
.end annotation


# static fields
.field public static final AMOUNT_TOTAL:Ljava/lang/String; = "amount_total"

.field public static final AMOUNT_TOTAL_CNY:Ljava/lang/String; = "amount_total_CNY"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CURRENCY_CODE:Ljava/lang/String; = "currency_code"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final MONTH_DATE:Ljava/lang/String; = "month_date"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
