.class Lcom/miui/payment/captor/config/TextPatternConfigManager$Holder;
.super Ljava/lang/Object;
.source "TextPatternConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/config/TextPatternConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/payment/captor/config/TextPatternConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/payment/captor/config/TextPatternConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/payment/captor/config/TextPatternConfigManager;-><init>(Lcom/miui/payment/captor/config/TextPatternConfigManager$1;)V

    sput-object v0, Lcom/miui/payment/captor/config/TextPatternConfigManager$Holder;->sInstance:Lcom/miui/payment/captor/config/TextPatternConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/payment/captor/config/TextPatternConfigManager;
    .locals 1

    sget-object v0, Lcom/miui/payment/captor/config/TextPatternConfigManager$Holder;->sInstance:Lcom/miui/payment/captor/config/TextPatternConfigManager;

    return-object v0
.end method
