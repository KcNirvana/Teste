.class public Lcom/miui/payment/provider/ProviderConstants;
.super Ljava/lang/Object;
.source "ProviderConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/provider/ProviderConstants$PaymentCategory;,
        Lcom/miui/payment/provider/ProviderConstants$PaymentMethod;,
        Lcom/miui/payment/provider/ProviderConstants$PaymentType;,
        Lcom/miui/payment/provider/ProviderConstants$PaymentSource;,
        Lcom/miui/payment/provider/ProviderConstants$PaymentCard;,
        Lcom/miui/payment/provider/ProviderConstants$DayTotalColumns;,
        Lcom/miui/payment/provider/ProviderConstants$TransactionsColumns;,
        Lcom/miui/payment/provider/ProviderConstants$Tables;
    }
.end annotation


# static fields
.field public static final URI_PAYMENT_UPDATE:Landroid/net/Uri;

.field public static sAccessWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "content://com.miui.paymentassistant/payment_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/payment/provider/ProviderConstants;->URI_PAYMENT_UPDATE:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/payment/provider/ProviderConstants;->sAccessWhiteList:Ljava/util/Set;

    sget-object v0, Lcom/miui/payment/provider/ProviderConstants;->sAccessWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/payment/provider/ProviderConstants;->sAccessWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.home"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
