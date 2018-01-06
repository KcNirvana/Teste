.class Lcom/miui/weather2/tools/ba$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/tools/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/tools/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/tools/ba$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/tools/ba$a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/tools/ba$a;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/miui/weather2/tools/ba$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ba$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/tools/ba$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/ba$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/weather2/tools/ba$a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/ba$a;->b:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/weather2/tools/ba$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/tools/ba$a;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/miui/weather2/tools/ba$a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ba$a;->b:Ljava/util/Map;

    return-object v0
.end method
