.class public interface abstract Lcom/miui/payment/provider/ProviderConstants$PaymentCard;
.super Ljava/lang/Object;
.source "ProviderConstants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/provider/ProviderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaymentCard"
.end annotation


# static fields
.field public static final CARD_CONTENT_URI:Landroid/net/Uri;

.field public static final ENABLED:Ljava/lang/String; = "payment_enabled"

.field public static final NEWEST_ITEM_AMOUNT:Ljava/lang/String; = "newest_item_amount"

.field public static final NEWEST_ITEM_CATEGORY_ICON:Ljava/lang/String; = "newest_item_category_icon"

.field public static final NEWEST_ITEM_COMMENT:Ljava/lang/String; = "newest_item_comment"

.field public static final NEWEST_ITEM_CURRENCY_CODE:Ljava/lang/String; = "newest_item_currency_code"

.field public static final NEWEST_ITEM_ID:Ljava/lang/String; = "newest_item_id"

.field public static final NEWEST_ITEM_METHOD:Ljava/lang/String; = "newest_item_method"

.field public static final NEWEST_ITEM_TIME:Ljava/lang/String; = "newest_item_time"

.field public static final NEWEST_ITEM_TYPE:Ljava/lang/String; = "newest_item_type"

.field public static final TOTAL_CURRENT_MONTH:Ljava/lang/String; = "total_current_month"

.field public static final TOTAL_TODAY:Ljava/lang/String; = "total_today"

.field public static final sPaymentCardColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.miui.paymentassistant/payment_card_content"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/payment/provider/ProviderConstants$PaymentCard;->CARD_CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "payment_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "total_today"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "total_current_month"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "newest_item_category_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "newest_item_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "newest_item_method"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "newest_item_amount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "newest_item_currency_code"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "newest_item_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "newest_item_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "newest_item_comment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/payment/provider/ProviderConstants$PaymentCard;->sPaymentCardColumns:[Ljava/lang/String;

    return-void
.end method
