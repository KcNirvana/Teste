.class public final Lcom/miui/payment/provider/ProviderConstants$TransactionsColumns;
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
    name = "TransactionsColumns"
.end annotation


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final AMOUNT_CNY:Ljava/lang/String; = "amount_CNY"

.field public static final AMOUNT_EDIT:Ljava/lang/String; = "amount_edit"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORY_EDIT:Ljava/lang/String; = "category_edit"

.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final CREATE_SOURCE:Ljava/lang/String; = "create_source"

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final CURRENCY_CODE:Ljava/lang/String; = "currency_code"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DELETED_TIME:Ljava/lang/String; = "deleted_time"

.field public static final FORMATTED_AMOUNT:Ljava/lang/String; = "formatted_amount"

.field public static final METHOD_CODE:Ljava/lang/String; = "method_code"

.field public static final METHOD_CODE_EDIT:Ljava/lang/String; = "methode_code_edit"

.field public static final METHOD_DESC:Ljava/lang/String; = "method_desc"

.field public static final RAW_DATA:Ljava/lang/String; = "raw_data"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field public static final TRANSACTION_TIME:Ljava/lang/String; = "transaction_time"

.field public static final TRANSACTION_TIME_EDIT:Ljava/lang/String; = "transaction_time_edit"

.field public static final TRANSACTION_TYPE:Ljava/lang/String; = "transaction_type"

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
