.class public interface abstract Lcom/miui/personalassistant/stock/provider/ProviderConstants$StockColumns;
.super Ljava/lang/Object;
.source "ProviderConstants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/stock/provider/ProviderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StockColumns"
.end annotation


# static fields
.field public static final CHANGE:Ljava/lang/String; = "change"

.field public static final CHANGERATE:Ljava/lang/String; = "changeRate"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LATESTPRICE:Ljava/lang/String; = "latestPrice"

.field public static final MARKET:Ljava/lang/String; = "market"

.field public static final NAMECN:Ljava/lang/String; = "nameCN"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final sStockColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "nameCN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "market"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "symbol"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "latestPrice"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "currency"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "change"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "changeRate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/stock/provider/ProviderConstants$StockColumns;->sStockColumns:[Ljava/lang/String;

    return-void
.end method
