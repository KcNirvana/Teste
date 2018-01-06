.class public Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/view/onOnePage/HourlyForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->g:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->k:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v2, p1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v2, p1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->k:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;)I

    move-result v0

    return v0
.end method
